.class Lcom/android/htcdialer/DialerApp$WorkingHandler;
.super Landroid/os/Handler;
.source "DialerApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerApp;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/DialerApp;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/htcdialer/DialerApp$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerApp;

    .line 299
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/android/htcdialer/DialerApp$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerApp;

    invoke-virtual {v0}, Lcom/android/htcdialer/DialerApp;->inflateDialerLayout()Landroid/view/View;

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
