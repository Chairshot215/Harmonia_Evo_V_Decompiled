.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2205
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$4;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2209
    :cond_0
    return-void
.end method
