.class public Lcom/android/mms/ui/RecipientsEditor;
.super Landroid/widget/IMEAutoCompleteTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final RECIPIENTS_MAX_LENGTH:I = 0x138

.field private static final TAG:Ljava/lang/String; = "RecipientsEditor"


# instance fields
.field private mLongPressedPosition:I

.field private final mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/IMEAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 84
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/AutoCompleteTextView;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x138

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 91
    const v0, 0x10991

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setInputType(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "common_black_inputfield_view"

    const v2, 0x7f0200e7

    invoke-static {v0, p0, v1, v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method static synthetic access$000([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Spanned;II)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientAt(Landroid/text/Spanned;II)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v0

    return-object v0
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "key"

    .prologue
    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 366
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 371
    :goto_1
    return-object v1

    .line 365
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private static getRecipientAt(Landroid/text/Spanned;II)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 9
    .parameter "sp"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 333
    const-class v7, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 334
    .local v0, a:[Landroid/text/Annotation;
    const-string v7, "person_id"

    invoke-static {v0, v7}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, person_id:Ljava/lang/String;
    const-string v7, "name"

    invoke-static {v0, v7}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, name:Ljava/lang/String;
    const-string v7, "label"

    invoke-static {v0, v7}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, label:Ljava/lang/String;
    const-string v7, "bcc"

    invoke-static {v0, v7}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, bcc:Ljava/lang/String;
    const-string v7, "number"

    invoke-static {v0, v7}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, number:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v6}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 344
    .local v6, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object v3, v6, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 345
    iput-object v2, v6, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 346
    const-string v7, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 349
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    .end local v4           #number:Ljava/lang/String;
    :cond_0
    iput-object v4, v6, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 352
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 353
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 358
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    .line 360
    return-object v6

    .line 355
    :cond_1
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    goto :goto_0
.end method

.method private pointToPosition(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 280
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 283
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 284
    const/4 v2, -0x1

    .line 290
    :goto_0
    return v2

    .line 287
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 288
    .local v1, line:I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 290
    .local v2, off:I
    goto :goto_0
.end method


# virtual methods
.method public disableIMECount()V
    .locals 4

    .prologue
    .line 492
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 493
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 496
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "remaincount"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "textsize"

    const/high16 v3, 0x4140

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 499
    const-string v2, "inputRemainCount"

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 156
    .local v2, text:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v0

    .line 157
    .local v0, end:I
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    if-nez v4, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v4, v2, v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 163
    .local v1, start:I
    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 164
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 308
    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-ltz v5, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 312
    .local v3, text:Landroid/text/Spanned;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 329
    .end local v3           #text:Landroid/text/Spanned;
    :cond_0
    :goto_0
    return-object v4

    .line 317
    .restart local v3       #text:Landroid/text/Spanned;
    :cond_1
    iget v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 321
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v5, v3, v6}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 322
    .local v2, start:I
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5, v3, v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 324
    .local v0, end:I
    if-eq v0, v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientAt(Landroid/text/Spanned;II)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v1

    .line 326
    .local v1, r:Lcom/android/mms/ui/RecipientList$Recipient;
    new-instance v4, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    invoke-direct {v4, v1}, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;-><init>(Lcom/android/mms/ui/RecipientList$Recipient;)V

    goto :goto_0
.end method

.method public getRecipientLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getRecipientLeft()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientList(Landroid/content/Context;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;
    .locals 1
    .parameter "context"
    .parameter "rl"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getRecipientList(Landroid/content/Context;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    packed-switch p1, :pswitch_data_0

    .line 389
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/IMEAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 379
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 382
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 383
    .local v1, selectedItem:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientsEditor;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->replaceText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->dismissDropDown()V

    .line 385
    const/4 v2, 0x1

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 296
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 297
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 299
    .local v2, y:I
    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 303
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/IMEAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->enoughToFilter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v0

    .line 130
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v3, p1, v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 134
    .local v2, start:I
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/android/mms/ui/RecipientsEditor;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 143
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->dismissDropDown()V

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 139
    .local v1, f:Landroid/widget/Filter;
    if-eqz v1, :cond_1

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "keyCode"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 209
    return-void
.end method

.method public performValidation()V
    .locals 8

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getValidator()Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v5

    .line 178
    .local v5, v:Landroid/widget/AutoCompleteTextView$Validator;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    if-nez v6, :cond_1

    .line 198
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 183
    .local v0, e:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 184
    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 185
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v6, v0, v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 186
    .local v3, start:I
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v6, v0, v3}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 188
    .local v1, end:I
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 189
    .local v4, sub:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    const-string v6, ""

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 196
    :cond_2
    :goto_1
    move v2, v3

    .line 197
    goto :goto_0

    .line 191
    :cond_3
    invoke-interface {v5, v4}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 192
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-interface {v5, v4}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method public populate(Lcom/android/mms/ui/RecipientList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 260
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 262
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/RecipientList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const-string v3, ", "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 269
    .local v1, r:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->toToken()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 272
    .end local v1           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->clearComposingText()V

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v2

    .line 229
    .local v2, end:I
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 231
    .local v4, start:I
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 232
    .local v1, editable:Landroid/text/Editable;
    invoke-static {v1, v4, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, original:Ljava/lang/String;
    invoke-static {v1, v4, v2, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "RecipientsEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", text:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallAndMessageConstraint()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->setCallMessageConstraint()V

    .line 108
    return-void
.end method

.method public setPhoneNumberConstraint(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->setPhoneNumberConstraint(Z)V

    .line 102
    return-void
.end method
