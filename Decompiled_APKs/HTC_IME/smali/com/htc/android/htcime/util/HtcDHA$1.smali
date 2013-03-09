.class Lcom/htc/android/htcime/util/HtcDHA$1;
.super Ljava/lang/Thread;
.source "HtcDHA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/HtcDHA;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/HtcDHA;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/HtcDHA;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/htcime/util/HtcDHA$1;->this$0:Lcom/htc/android/htcime/util/HtcDHA;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/HtcDHA$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/HtcDHA$1;->this$0:Lcom/htc/android/htcime/util/HtcDHA;

    iget-object v1, v1, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/android/htcime/util/HtcDHA$1;->this$0:Lcom/htc/android/htcime/util/HtcDHA;

    iget-object v1, v1, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/htc/android/htcime/util/HtcDHA$1;->this$0:Lcom/htc/android/htcime/util/HtcDHA;

    iget-object v1, v1, Lcom/htc/android/htcime/util/HtcDHA;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 79
    :cond_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
