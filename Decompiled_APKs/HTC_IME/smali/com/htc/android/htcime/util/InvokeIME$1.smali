.class Lcom/htc/android/htcime/util/InvokeIME$1;
.super Landroid/os/Handler;
.source "InvokeIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/InvokeIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/InvokeIME;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/InvokeIME;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/android/htcime/util/InvokeIME$1;->this$0:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/InvokeIME$1;->this$0:Lcom/htc/android/htcime/util/InvokeIME;

    #calls: Lcom/htc/android/htcime/util/InvokeIME;->relaunchIME()V
    invoke-static {v0}, Lcom/htc/android/htcime/util/InvokeIME;->access$000(Lcom/htc/android/htcime/util/InvokeIME;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
