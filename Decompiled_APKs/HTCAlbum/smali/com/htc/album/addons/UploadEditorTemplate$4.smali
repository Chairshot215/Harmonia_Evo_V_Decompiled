.class Lcom/htc/album/addons/UploadEditorTemplate$4;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1453
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$4;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "onFocus"

    .prologue
    .line 1457
    if-nez p2, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$4;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$4;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$4;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1464
    :cond_0
    return-void
.end method
