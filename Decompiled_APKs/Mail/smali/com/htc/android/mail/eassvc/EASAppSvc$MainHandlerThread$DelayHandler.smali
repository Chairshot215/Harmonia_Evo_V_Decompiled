.class Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;
.super Landroid/os/Handler;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;Lcom/htc/android/mail/eassvc/EASAppSvc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1427
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1428
    .local v0, newMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->addRequest(Landroid/os/Message;)V

    .line 1429
    return-void
.end method
