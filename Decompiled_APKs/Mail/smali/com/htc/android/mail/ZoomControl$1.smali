.class Lcom/htc/android/mail/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ZoomControl;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ZoomControl;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0}, Lcom/htc/android/mail/ZoomControl;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    invoke-virtual {v0}, Lcom/htc/android/mail/ZoomControl;->hide()V

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    iget-object v0, v0, Lcom/htc/android/mail/ZoomControl;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    iget-object v1, v1, Lcom/htc/android/mail/ZoomControl;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    iget-object v0, v0, Lcom/htc/android/mail/ZoomControl;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/ZoomControl$1;->this$0:Lcom/htc/android/mail/ZoomControl;

    iget-object v1, v1, Lcom/htc/android/mail/ZoomControl;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/htc/android/mail/ZoomControl;->access$000()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
