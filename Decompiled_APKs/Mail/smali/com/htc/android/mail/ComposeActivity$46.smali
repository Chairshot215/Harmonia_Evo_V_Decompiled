.class Lcom/htc/android/mail/ComposeActivity$46;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadReplyText(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field contRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field updateLayout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 6161
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$46;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$46;->contRect:Landroid/graphics/Rect;

    .line 6164
    new-instance v0, Lcom/htc/android/mail/ComposeActivity$46$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ComposeActivity$46$1;-><init>(Lcom/htc/android/mail/ComposeActivity$46;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$46;->updateLayout:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 4
    .parameter "view"
    .parameter "picture"

    .prologue
    .line 6202
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ComposeActivity"

    const-string v1, "onNewPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6203
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6204
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$46;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$46;->updateLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6205
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$46;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$46;->updateLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6207
    :cond_1
    return-void
.end method
