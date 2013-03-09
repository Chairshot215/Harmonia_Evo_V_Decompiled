.class Lcom/htc/android/worldclock/TimeZonePicker$1;
.super Ljava/lang/Object;
.source "TimeZonePicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$1;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 104
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$1;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    if-nez p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$1;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$1;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/android/worldclock/TimeZonePicker;->access$100(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker$1;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$1;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/android/worldclock/TimeZonePicker;->access$100(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
