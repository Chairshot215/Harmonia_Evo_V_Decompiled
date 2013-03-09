.class Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$originalRecipients:Ljava/util/ArrayList;

.field final synthetic val$replacements:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$replacements:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2350
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v8, v8, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2352
    .local v7, text:Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v8, v8, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2354
    .local v4, oldText:Landroid/text/Editable;
    const/4 v2, 0x0

    .line 2355
    .local v2, i:I
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientChip;

    .line 2356
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 2357
    .local v6, start:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 2358
    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2359
    .local v1, end:I
    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2361
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$replacements:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/RecipientChip;

    .line 2362
    .local v5, replacement:Lcom/android/ex/chips/RecipientChip;
    const/16 v8, 0x21

    invoke-virtual {v7, v5, v6, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2364
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 2366
    .end local v1           #end:I
    .end local v5           #replacement:Lcom/android/ex/chips/RecipientChip;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2368
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v6           #start:I
    :cond_1
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2369
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v8, v8, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v8, v7}, Lcom/android/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2370
    return-void
.end method
