.class Lcom/android/htccontacts/HtcContactInfoBase$1;
.super Landroid/os/Handler;
.source "HtcContactInfoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactInfoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcContactInfoBase;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcContactInfoBase;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfoBase$1;->this$0:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase$1;->this$0:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-boolean v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mDestroyed:Z

    if-nez v1, :cond_0

    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase$1;->this$0:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v3, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mCacheChang:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase$1;->this$0:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
