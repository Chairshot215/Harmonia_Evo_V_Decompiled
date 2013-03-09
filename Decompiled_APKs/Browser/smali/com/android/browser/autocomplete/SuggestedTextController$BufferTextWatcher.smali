.class Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/autocomplete/SuggestedTextController;


# direct methods
.method private constructor <init>(Lcom/android/browser/autocomplete/SuggestedTextController;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/autocomplete/SuggestedTextController;Lcom/android/browser/autocomplete/SuggestedTextController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;-><init>(Lcom/android/browser/autocomplete/SuggestedTextController;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "newText"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #calls: Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$200(Lcom/android/browser/autocomplete/SuggestedTextController;)V

    .line 382
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #calls: Lcom/android/browser/autocomplete/SuggestedTextController;->handleTextChanged(Landroid/text/Editable;)V
    invoke-static {v0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$300(Lcom/android/browser/autocomplete/SuggestedTextController;Landroid/text/Editable;)V

    .line 383
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #calls: Lcom/android/browser/autocomplete/SuggestedTextController;->assertNotIgnoringSelectionChanges()V
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$200(Lcom/android/browser/autocomplete/SuggestedTextController;)V

    .line 388
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$400(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    move-result-object v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferTextWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    new-instance v1, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    invoke-direct {v1, p2, p4, p3}, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;-><init>(III)V

    #setter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;
    invoke-static {v0, v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$402(Lcom/android/browser/autocomplete/SuggestedTextController;Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;)Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    .line 391
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 395
    return-void
.end method
