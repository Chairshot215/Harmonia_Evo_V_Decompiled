.class Lcom/htc/album/addons/UploadEditorViewManager$3;
.super Ljava/lang/Object;
.source "UploadEditorViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorViewManager;->attachTo(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorViewManager;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$000(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$000(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$000(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorViewManager;->access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 342
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$000(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorViewManager;->access$200(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 344
    :cond_0
    return v2
.end method
