.class public Lcom/htc/android/mail/RequestController$ProgressHandler;
.super Ljava/lang/Object;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 3561
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$ProgressHandler;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 7
    .parameter "account"
    .parameter "message"

    .prologue
    .line 3563
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$ProgressHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;
    invoke-static {v6}, Lcom/htc/android/mail/RequestController;->access$2800(Lcom/htc/android/mail/RequestController;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 3564
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$ProgressHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;
    invoke-static {v6}, Lcom/htc/android/mail/RequestController;->access$2800(Lcom/htc/android/mail/RequestController;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3565
    .local v0, allHandler:[Ljava/lang/Object;
    iget v6, p2, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 3585
    .end local v0           #allHandler:[Ljava/lang/Object;
    :cond_0
    :pswitch_0
    return-void

    .line 3567
    .restart local v0       #allHandler:[Ljava/lang/Object;
    :pswitch_1
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$ProgressHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #setter for: Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;
    invoke-static {v6, p2}, Lcom/htc/android/mail/RequestController;->access$2902(Lcom/htc/android/mail/RequestController;Landroid/os/Message;)Landroid/os/Message;

    .line 3568
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 3569
    .local v5, obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3570
    .local v2, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_1

    .line 3571
    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->onUpdateProgressStatus(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3568
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3576
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_2
    move-object v1, v0

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 3577
    .restart local v5       #obj:Ljava/lang/Object;
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailRequestHandler;

    .line 3578
    .restart local v2       #handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v2, :cond_2

    .line 3579
    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/MailRequestHandler;->onreloadMailbody(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3576
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3565
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
