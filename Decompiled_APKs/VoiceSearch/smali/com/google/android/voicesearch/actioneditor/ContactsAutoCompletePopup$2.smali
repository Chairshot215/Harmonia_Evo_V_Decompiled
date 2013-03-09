.class Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;
.super Ljava/lang/Object;
.source "ContactsAutoCompletePopup.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setCompletionConstraint(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 148
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$500(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$500(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$400(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$300(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->refreshLayout()V

    .line 155
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    goto :goto_0
.end method
