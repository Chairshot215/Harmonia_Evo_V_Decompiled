.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$3;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


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
    .line 235
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$3;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 239
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 243
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$3;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$900(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$3;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mFilterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 248
    :cond_1
    return-void
.end method
