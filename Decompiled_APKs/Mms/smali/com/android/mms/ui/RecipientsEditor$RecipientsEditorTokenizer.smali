.class Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLabelSpan:Landroid/text/style/TextAppearanceSpan;

.field private final mList:Landroid/widget/AutoCompleteTextView;

.field private final mTypeSpan:Landroid/text/style/TextAppearanceSpan;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/AutoCompleteTextView;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "list"

    .prologue
    const v4, 0x1030046

    const/16 v3, 0x8

    .line 400
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    .line 401
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mInflater:Landroid/view/LayoutInflater;

    .line 402
    iput-object p3, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/AutoCompleteTextView;

    .line 404
    const v1, 0x1030046

    .line 405
    .local v1, size:I
    const/16 v0, 0x8

    .line 406
    .local v0, color:I
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p2, v4, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mLabelSpan:Landroid/text/style/TextAppearanceSpan;

    .line 407
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p2, v4, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mTypeSpan:Landroid/text/style/TextAppearanceSpan;

    .line 408
    return-void
.end method


# virtual methods
.method public getRecipientLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientList(Landroid/content/Context;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;
    .locals 13
    .parameter "context"
    .parameter "rl"

    .prologue
    .line 418
    iget-object v10, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 420
    .local v7, sp:Landroid/text/Spanned;
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 422
    .local v3, len:I
    if-nez p2, :cond_0

    .line 423
    new-instance p2, Lcom/android/mms/ui/RecipientList;

    .end local p2
    invoke-direct {p2}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 426
    .restart local p2
    :cond_0
    const/4 v10, 0x0

    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v11

    const-class v12, Landroid/text/Annotation;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 427
    .local v0, a:[Landroid/text/Annotation;
    const-string v10, "group:"

    #calls: Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/mms/ui/RecipientsEditor;->access$000([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, groupName:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 430
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDirectCreateGroupRecipient()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 431
    invoke-virtual {p2}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v6

    .line 432
    .local v6, size:I
    invoke-static {v1, p2, p1}, Lcom/android/mms/ui/RecipientsAdapter;->getGroupStrings(Ljava/lang/String;Lcom/android/mms/ui/RecipientList;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;

    move-result-object p2

    .line 433
    invoke-virtual {p2}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v10

    if-ne v6, v10, :cond_1

    .line 434
    iget-object v10, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/AutoCompleteTextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move-object v5, p2

    .line 477
    .end local v6           #size:I
    .end local p2
    .local v5, rl:Lcom/android/mms/ui/RecipientList;
    :goto_0
    return-object v5

    .line 438
    .end local v5           #rl:Lcom/android/mms/ui/RecipientList;
    .restart local p2
    :cond_2
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsAdapter;->getGroupStrings(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v9

    .line 439
    .local v9, t:Landroid/text/Spanned;
    if-eqz v9, :cond_7

    .line 440
    move-object v7, v9

    .line 441
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 449
    .end local v9           #t:Landroid/text/Spanned;
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 450
    .local v8, start:I
    const/4 v2, 0x0

    .line 451
    .local v2, i:I
    if-eqz v7, :cond_a

    .line 452
    :goto_2
    add-int/lit8 v10, v3, 0x1

    if-ge v2, v10, :cond_b

    .line 453
    if-eq v2, v3, :cond_4

    invoke-interface {v7, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v10

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_4

    invoke-interface {v7, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v10

    const/16 v11, 0x3b

    if-ne v10, v11, :cond_9

    .line 454
    :cond_4
    if-le v2, v8, :cond_6

    .line 455
    #calls: Lcom/android/mms/ui/RecipientsEditor;->getRecipientAt(Landroid/text/Spanned;II)Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-static {v7, v8, v2}, Lcom/android/mms/ui/RecipientsEditor;->access$100(Landroid/text/Spanned;II)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v4

    .line 457
    .local v4, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v10, v4, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    if-nez v10, :cond_5

    .line 458
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v4, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    .line 460
    :cond_5
    invoke-virtual {p2, p1, v4}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 463
    .end local v4           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 465
    :goto_3
    if-ge v2, v3, :cond_8

    invoke-interface {v7, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_8

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 444
    .end local v2           #i:I
    .end local v8           #start:I
    .restart local v9       #t:Landroid/text/Spanned;
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 469
    .end local v9           #t:Landroid/text/Spanned;
    .restart local v2       #i:I
    .restart local v8       #start:I
    :cond_8
    move v8, v2

    goto :goto_2

    .line 471
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 476
    :cond_a
    iget-object v10, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->mList:Landroid/widget/AutoCompleteTextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    move-object v5, p2

    .line 477
    .end local p2
    .restart local v5       #rl:Lcom/android/mms/ui/RecipientList;
    goto :goto_0
.end method
