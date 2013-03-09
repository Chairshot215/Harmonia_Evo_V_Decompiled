.class Lcom/htc/android/htcime/util/htcDAM$1;
.super Ljava/lang/Thread;
.source "htcDAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/htcDAM;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/htcDAM;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/htc/android/htcime/util/htcDAM$1;->this$0:Lcom/htc/android/htcime/util/htcDAM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 591
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/htcDAM$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM$1;->this$0:Lcom/htc/android/htcime/util/htcDAM;

    iget-object v1, v1, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM$1;->this$0:Lcom/htc/android/htcime/util/htcDAM;

    iget-object v1, v1, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/htc/android/htcime/util/htcDAM$1;->this$0:Lcom/htc/android/htcime/util/htcDAM;

    iget-object v1, v1, Lcom/htc/android/htcime/util/htcDAM;->mNotify:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 601
    :cond_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
