.class Lcom/android/htccontacts/ui/EditContactActivity2$6;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$6;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStatusChange(Landroid/widget/ScrollView;I)V
    .locals 4
    .parameter "view"
    .parameter "currentStatus"

    .prologue
    .line 479
    const/16 v1, 0x1001

    if-ne p2, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$6;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$6;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$600(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 487
    .end local v0           #focusView:Landroid/view/View;
    :cond_0
    return-void
.end method
