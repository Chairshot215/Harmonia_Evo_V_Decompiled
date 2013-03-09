.class Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;
.super Ljava/lang/Object;
.source "HtcDeviceUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcDeviceUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

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

    .line 88
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    if-eqz p2, :cond_1

    .line 93
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$200(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcDeviceUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->access$200(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
