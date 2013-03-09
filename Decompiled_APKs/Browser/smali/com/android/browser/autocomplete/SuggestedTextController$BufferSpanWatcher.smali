.class Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferSpanWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/autocomplete/SuggestedTextController;


# direct methods
.method private constructor <init>(Lcom/android/browser/autocomplete/SuggestedTextController;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/autocomplete/SuggestedTextController;Lcom/android/browser/autocomplete/SuggestedTextController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;-><init>(Lcom/android/browser/autocomplete/SuggestedTextController;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "text"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 401
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 4
    .parameter "text"
    .parameter "what"
    .parameter "ostart"
    .parameter "oend"
    .parameter "nstart"
    .parameter "nend"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mCurrentTextChange:Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$400(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$500(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 408
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$600(Lcom/android/browser/autocomplete/SuggestedTextController;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le p6, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$600(Lcom/android/browser/autocomplete/SuggestedTextController;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$600(Lcom/android/browser/autocomplete/SuggestedTextController;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSpanWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestedTextController;

    #getter for: Lcom/android/browser/autocomplete/SuggestedTextController;->mSuggested:Lcom/android/browser/autocomplete/SuggestedSpan;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->access$700(Lcom/android/browser/autocomplete/SuggestedTextController;)Lcom/android/browser/autocomplete/SuggestedSpan;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "text"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 420
    return-void
.end method
