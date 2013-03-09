.class Lcom/android/htccontacts/app/BaseActivity$BaseHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseHandler"
.end annotation


# instance fields
.field mBaseActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/BaseActivity;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseActivity$BaseHandler;->mBaseActivity:Ljava/lang/ref/WeakReference;

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseActivity$BaseHandler;->mBaseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/BaseActivity;

    .line 86
    .local v0, activity:Lcom/android/htccontacts/app/BaseActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseActivity;->handleStuffAfterOnResume()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
    .end packed-switch
.end method
