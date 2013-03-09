.class Lcom/htc/android/mail/easclient/OutOfOffice$1$1;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/OutOfOffice$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/OutOfOffice$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice$1;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$1;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$1;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 111
    return-void
.end method
