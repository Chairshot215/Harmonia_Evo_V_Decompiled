.class Lcom/htc/album/addons/UploadEditorTemplate$5;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorTemplate;->initUploadEditorUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v2, 0x0

    .line 1573
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorTemplate;->access$900(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1576
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate$5;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorTemplate;->access$800(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1578
    :cond_0
    return v2
.end method
