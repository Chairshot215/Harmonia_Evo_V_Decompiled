.class Lcom/android/htccontacts/CheckBoxContactPicker$2;
.super Ljava/lang/Object;
.source "CheckBoxContactPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CheckBoxContactPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$2;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 483
    if-nez p2, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$2;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$000(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$2;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v1, v1, Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method
