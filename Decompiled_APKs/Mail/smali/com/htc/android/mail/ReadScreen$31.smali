.class Lcom/htc/android/mail/ReadScreen$31;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field contRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field updateLayout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 3781
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3782
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$31;->contRect:Landroid/graphics/Rect;

    .line 3784
    new-instance v0, Lcom/htc/android/mail/ReadScreen$31$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreen$31$1;-><init>(Lcom/htc/android/mail/ReadScreen$31;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$31;->updateLayout:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 4
    .parameter "view"
    .parameter "picture"

    .prologue
    .line 3826
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "onNewPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3828
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$31;->updateLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3829
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$31;->updateLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3830
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$31;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    #setter for: Lcom/htc/android/mail/ReadScreen;->mWebViewScale:F
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$5002(Lcom/htc/android/mail/ReadScreen;F)F

    .line 3833
    :cond_1
    return-void
.end method
