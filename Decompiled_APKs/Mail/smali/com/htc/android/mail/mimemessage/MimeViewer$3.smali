.class Lcom/htc/android/mail/mimemessage/MimeViewer$3;
.super Ljava/lang/Object;
.source "MimeViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 416
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$3;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "i"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x64

    .line 418
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 419
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$3;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$3;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->removeDialog(I)V

    .line 421
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$3;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->finish()V

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
