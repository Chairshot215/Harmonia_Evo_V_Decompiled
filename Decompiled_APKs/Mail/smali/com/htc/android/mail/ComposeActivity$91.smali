.class Lcom/htc/android/mail/ComposeActivity$91;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
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
    .line 11058
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$91;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11060
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$91;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/htc/android/mail/HtcEditableWebView;->setCaretPos(II)V

    .line 11061
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$91;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcEditableWebView;->requestFocus()Z

    .line 11062
    return v1
.end method
