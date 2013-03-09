.class Lcom/google/android/voicesearch/actioneditor/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/SlotView;->initWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field save:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Landroid/text/style/StyleSpan;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/StyleSpan;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Landroid/text/style/StyleSpan;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/StyleSpan;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Landroid/text/style/StyleSpan;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/StyleSpan;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$100(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$200(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$200(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;

    .line 165
    .local v1, listener:Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;->onValueChange(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    goto :goto_0

    .line 169
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;
    :cond_2
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    #getter for: Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->access$300(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onValueChanged()V

    .line 171
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 153
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;->save:Landroid/text/SpannableStringBuilder;

    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 150
    return-void
.end method
