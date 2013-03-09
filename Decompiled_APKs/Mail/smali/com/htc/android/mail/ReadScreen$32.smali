.class Lcom/htc/android/mail/ReadScreen$32;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3838
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$32;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 3840
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$32;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/HtcWebView;->zoomIn()Z

    .line 3841
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$32;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5000(Lcom/htc/android/mail/ReadScreen;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double v0, v2, v4

    .line 3842
    .local v0, futureScale:D
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$32;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->setZoomStatus(D)V
    invoke-static {v2, v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$5100(Lcom/htc/android/mail/ReadScreen;D)V

    .line 3843
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$5200()Lcom/htc/android/mail/ZoomControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/ZoomControl;->showControlsFromMove()V

    .line 3844
    return-void
.end method
