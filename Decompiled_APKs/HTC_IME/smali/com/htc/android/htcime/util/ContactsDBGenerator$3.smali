.class Lcom/htc/android/htcime/util/ContactsDBGenerator$3;
.super Landroid/os/Handler;
.source "ContactsDBGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/ContactsDBGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$3;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 411
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 435
    :goto_0
    :pswitch_0
    return-void

    .line 416
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/htcime/util/ContactsDBGenerator$3$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/util/ContactsDBGenerator$3$1;-><init>(Lcom/htc/android/htcime/util/ContactsDBGenerator$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 427
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 428
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
