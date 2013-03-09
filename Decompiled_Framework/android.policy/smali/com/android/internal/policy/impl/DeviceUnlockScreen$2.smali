.class Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;
.super Ljava/lang/Object;
.source "DeviceUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->access$100(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->access$100(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->access$200(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->access$100(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/DeviceUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->access$200(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
