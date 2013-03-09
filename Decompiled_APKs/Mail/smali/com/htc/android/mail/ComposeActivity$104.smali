.class Lcom/htc/android/mail/ComposeActivity$104;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12407
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$104;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 12409
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$104;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 12410
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$104;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcEditableWebView;->onEndSelect()V

    .line 12412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
