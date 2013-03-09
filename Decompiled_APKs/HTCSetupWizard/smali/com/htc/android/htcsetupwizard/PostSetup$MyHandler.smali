.class Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;
.super Landroid/os/Handler;
.source "PostSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/PostSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/PostSetup;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/PostSetup;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/PostSetup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/PostSetup;Lcom/htc/android/htcsetupwizard/PostSetup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/PostSetup;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, serviceThread:Ljava/lang/Thread;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 56
    :pswitch_0
    new-instance v0, Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler$1;

    .end local v0           #serviceThread:Ljava/lang/Thread;
    const-string v1, "PostSetup"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler$1;-><init>(Lcom/htc/android/htcsetupwizard/PostSetup$MyHandler;Ljava/lang/String;)V

    .line 63
    .restart local v0       #serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
    .end packed-switch
.end method
