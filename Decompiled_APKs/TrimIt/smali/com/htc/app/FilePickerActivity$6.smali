.class Lcom/htc/app/FilePickerActivity$6;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity;->initialFilePicker(Ljava/lang/String;IZII[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    .line 716
    if-eqz p2, :cond_1

    .line 717
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerUtil;

    .line 719
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$500(Lcom/htc/app/FilePickerActivity;)Lcom/htc/widget/HeaderBarMiddle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarMiddle;->setFocusable(Z)V

    .line 720
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$600(Lcom/htc/app/FilePickerActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 721
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerActivity;->access$602(Lcom/htc/app/FilePickerActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$600(Lcom/htc/app/FilePickerActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$6;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$700(Lcom/htc/app/FilePickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 726
    :cond_1
    return-void
.end method
