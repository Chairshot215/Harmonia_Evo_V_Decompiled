.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$2;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$2;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$2;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$2;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 230
    :cond_0
    return-void
.end method
