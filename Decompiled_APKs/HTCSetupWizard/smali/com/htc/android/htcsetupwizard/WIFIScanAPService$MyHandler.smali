.class Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;
.super Landroid/os/Handler;
.source "WIFIScanAPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/WIFIScanAPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->attemptScan()V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
