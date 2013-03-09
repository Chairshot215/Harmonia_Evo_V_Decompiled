.class Lcom/htc/android/mail/mimemessage/MimeViewer$2;
.super Landroid/os/Handler;
.source "MimeViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mimemessage/MimeViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mimemessage/MimeViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 122
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;-><init>(Lcom/htc/android/mail/mimemessage/MimeViewer$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
