.class Lcom/htc/launcher/SearchAutoCompleteTextView$1;
.super Landroid/os/Handler;
.source "SearchAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/SearchAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/SearchAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/launcher/SearchAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/launcher/SearchAutoCompleteTextView$1;->this$0:Lcom/htc/launcher/SearchAutoCompleteTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/SearchAutoCompleteTextView$1;->this$0:Lcom/htc/launcher/SearchAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/launcher/SearchAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/SearchAutoCompleteTextView$1;->this$0:Lcom/htc/launcher/SearchAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/htc/launcher/SearchAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 47
    :cond_0
    return-void
.end method
