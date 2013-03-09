.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IMECloseOnScrollListener"
.end annotation


# instance fields
.field mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactPhoneEmailDataPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 2302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 2305
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
    .line 2310
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2313
    const/4 v4, 0x1

    if-eq p2, v4, :cond_0

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 2315
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$IMECloseOnScrollListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    .line 2316
    .local v0, activity:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
    if-eqz v0, :cond_1

    .line 2317
    const v4, 0x7f07001e

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/SearchHeaderBar;

    .line 2319
    .local v1, searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/SearchHeaderBar;->getHeaderInputBox()Lcom/htc/widget/HeaderBarInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    .line 2320
    .local v3, tokenView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2321
    .local v2, token:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 2322
    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getInputMethodManaer()Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2327
    .end local v0           #activity:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
    .end local v1           #searchBar:Lcom/android/htccontacts/widget/title/SearchHeaderBar;
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #tokenView:Landroid/view/View;
    :cond_1
    return-void
.end method
