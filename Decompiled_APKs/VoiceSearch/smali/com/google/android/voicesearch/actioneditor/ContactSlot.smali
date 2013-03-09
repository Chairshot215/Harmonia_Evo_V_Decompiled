.class public Lcom/google/android/voicesearch/actioneditor/ContactSlot;
.super Lcom/google/android/voicesearch/actioneditor/SlotView;
.source "ContactSlot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;
    }
.end annotation


# static fields
.field private static final TOKENIZE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private firstAppearance:Z

.field private mAddressType:I

.field private mAngleBracketHider:Landroid/text/method/TransformationMethod;

.field private mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

.field private mNeedsRelayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "([^,]*)([,]|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v0

    return-object v0
.end method

.method public static createContactSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/ContactSlot;
    .locals 5
    .parameter "context"
    .parameter "inflationRoot"
    .parameter "popupManager"
    .parameter "slotContainer"
    .parameter "spec"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 85
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040003

    invoke-virtual {v0, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    .line 87
    .local v1, slot:Lcom/google/android/voicesearch/actioneditor/ContactSlot;
    invoke-virtual {p4}, Lcom/google/android/voicesearch/actions/SlotSpec;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setAddressType(I)V

    .line 89
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 91
    return-object v1

    :cond_0
    move v2, v3

    .line 87
    goto :goto_0
.end method

.method private getCurrentAutoCompletePart()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v0

    .line 292
    .local v0, span:Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    if-nez v0, :cond_0

    .line 293
    const-string v1, ""

    .line 295
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getContact()Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 272
    if-gez v0, :cond_0

    move-object v0, v1

    .line 283
    :goto_0
    return-object v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 277
    const-class v3, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v2, v0, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 278
    array-length v2, v0

    if-nez v2, :cond_1

    move-object v0, v1

    .line 279
    goto :goto_0

    .line 282
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private inputContact(Lcom/google/android/voicesearch/actions/Contact;)Z
    .locals 7
    .parameter "contact"

    .prologue
    const/4 v4, 0x0

    .line 456
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, hyp:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v4

    .line 461
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->resolveAlternatesFromContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v0

    .line 462
    .local v0, alternates:Lcom/google/android/voicesearch/actions/ContactAlternates;
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->resolveContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 465
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 468
    .local v2, contactRep:Landroid/text/SpannableStringBuilder;
    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 475
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 476
    .local v1, contactInput:Landroid/text/SpannableStringBuilder;
    const-string v4, ", "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 477
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 478
    const-string v4, ", "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 480
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputString(Ljava/lang/CharSequence;)V

    .line 482
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshHighlights()V

    .line 483
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private refreshAutoCompletePopup()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentAutoCompletePart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setCompletionConstraint(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopupPosition()V

    .line 265
    :cond_0
    return-void
.end method

.method private refreshAutoCompletePopupPosition()V
    .locals 3

    .prologue
    .line 253
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 255
    .local v0, offset:I
    invoke-static {p0, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v1

    .line 256
    .local v1, point:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v2, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->moveCompleting(Landroid/graphics/Point;)V

    .line 258
    .end local v0           #offset:I
    .end local v1           #point:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private refreshContactSpans()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 212
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllContactSpans()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 214
    .local v4, text:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 216
    .local v2, start:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v8

    invoke-interface {v4, v2, v8}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, string:Ljava/lang/String;
    sget-object v8, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 219
    .local v0, matcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, token:Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    .line 222
    .local v7, tokenStart:I
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    .line 224
    .local v6, tokenEnd:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 225
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-direct {v1, v5}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, span:Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    add-int v8, v2, v7

    add-int v9, v2, v6

    const/16 v10, 0x21

    invoke-interface {v4, v1, v8, v9, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 230
    .end local v1           #span:Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    .end local v5           #token:Ljava/lang/String;
    .end local v6           #tokenEnd:I
    .end local v7           #tokenStart:I
    :cond_1
    return-void
.end method

.method private refreshHighlights()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllHighlights()V

    .line 234
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshContactSpans()V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    const-class v3, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 238
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 239
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 240
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getAddressStart()I

    move-result v6

    .line 241
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getAddressEnd()I

    move-result v4

    .line 243
    sub-int v7, v4, v6

    if-lez v7, :cond_0

    .line 244
    new-instance v7, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0007

    invoke-direct {v7, v8, v9}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 246
    add-int/2addr v6, v5

    add-int/2addr v4, v5

    const/16 v5, 0x21

    invoke-interface {v2, v7, v6, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method private removeAllContactSpans()V
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllSpansOfType(Ljava/lang/Class;)V

    .line 209
    return-void
.end method

.method private removeAllHighlights()V
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllSpansOfType(Ljava/lang/Class;)V

    .line 205
    return-void
.end method

.method private removeAllSpansOfType(Ljava/lang/Class;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, classType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    .line 196
    .local v5, text:Landroid/text/Editable;
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v7

    invoke-interface {v5, v6, v7, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 198
    .local v4, spans:[Ljava/lang/Object;,"[TT;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 199
    .local v3, span:Ljava/lang/Object;,"TT;"
    invoke-interface {v5, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v3           #span:Ljava/lang/Object;,"TT;"
    :cond_0
    return-void
.end method

.method private resolveAlternatesFromContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/ContactAlternates;
    .locals 7
    .parameter "contactWithAlternates"

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, alternates:Lcom/google/android/voicesearch/actions/ContactAlternates;
    instance-of v6, p1, Lcom/google/android/voicesearch/actions/CorrectionContact;

    if-eqz v6, :cond_0

    .line 435
    check-cast p1, Lcom/google/android/voicesearch/actions/CorrectionContact;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/CorrectionContact;->getAlternates()Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v0

    .line 438
    :cond_0
    if-nez v0, :cond_1

    .line 439
    const/4 v6, 0x0

    .line 452
    :goto_0
    return-object v6

    .line 442
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v1, alternatesList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactAlternates;->getContacts()Ljava/util/List;

    move-result-object v3

    .line 445
    .local v3, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/Contact;

    .line 446
    .local v2, contact:Lcom/google/android/voicesearch/actions/Contact;
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->resolveContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v5

    .line 447
    .local v5, resolved:Lcom/google/android/voicesearch/actions/Contact;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 448
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 452
    .end local v2           #contact:Lcom/google/android/voicesearch/actions/Contact;
    .end local v5           #resolved:Lcom/google/android/voicesearch/actions/Contact;
    :cond_3
    new-instance v6, Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-direct {v6, v1}, Lcom/google/android/voicesearch/actions/ContactAlternates;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private resolveContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 6
    .parameter "contact"

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, hyp:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v1, p1

    .line 425
    .end local p1
    .local v1, contact:Lcom/google/android/voicesearch/actions/Contact;
    :goto_0
    return-object v1

    .line 405
    .end local v1           #contact:Lcom/google/android/voicesearch/actions/Contact;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    invoke-static {v4, v3, v5}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAlternates(Landroid/content/Context;Ljava/lang/String;I)[Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 411
    .local v2, contacts:[Lcom/google/android/voicesearch/actions/Contact;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAddressType()I

    move-result v0

    .line 412
    .local v0, addressType:I
    if-nez v0, :cond_1

    .line 413
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V

    .line 416
    :cond_1
    array-length v4, v2

    if-lez v4, :cond_3

    .line 417
    const/4 v4, 0x0

    aget-object p1, v2, v4

    .end local v0           #addressType:I
    .end local v2           #contacts:[Lcom/google/android/voicesearch/actions/Contact;
    :cond_2
    :goto_1
    move-object v1, p1

    .line 425
    .end local p1
    .restart local v1       #contact:Lcom/google/android/voicesearch/actions/Contact;
    goto :goto_0

    .line 420
    .end local v1           #contact:Lcom/google/android/voicesearch/actions/Contact;
    .restart local v0       #addressType:I
    .restart local v2       #contacts:[Lcom/google/android/voicesearch/actions/Contact;
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->contactMissingAddress(I)V

    goto :goto_1
.end method

.method private setAngleBracketsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionStart()I

    move-result v1

    .line 382
    .local v1, start:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 384
    .local v0, end:I
    if-eqz p1, :cond_1

    .line 385
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAngleBracketHider:Landroid/text/method/TransformationMethod;

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 390
    :goto_0
    if-ltz v1, :cond_0

    .line 391
    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(II)V

    .line 393
    :cond_0
    return-void

    .line 387
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private startAutoCompleting()V
    .locals 6

    .prologue
    .line 299
    new-instance v2, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v4

    iget v5, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actioneditor/PopupManager;I)V

    iput-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    .line 302
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    new-instance v3, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setShowListener(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;)V

    .line 312
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    new-instance v3, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 332
    .local v0, offset:I
    invoke-static {p0, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v1

    .line 334
    .local v1, point:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V

    .line 335
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v2, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->beginCompleting(Landroid/graphics/Point;)V

    .line 336
    return-void
.end method

.method private stopAutoCompleting()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->endCompleting()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public formatContactsList()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshContactSpans()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    const-class v3, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 169
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 171
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 172
    aget-object v4, v0, v1

    .line 173
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 174
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 176
    invoke-virtual {p0, v5, v4}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAlternates(II)Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v6

    .line 178
    invoke-interface {v2, v5, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 180
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v5, v4

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v7, 0x21

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 171
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v2

    const-string v4, ""

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 191
    return-void
.end method

.method public getAddressType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    return v0
.end method

.method public getAlternates(II)Lcom/google/android/voicesearch/actions/ContactAlternates;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 151
    const-class v1, Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actions/ContactAlternates;

    .line 153
    array-length v1, v0

    if-nez v1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 11

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 495
    .local v1, addresses:[Landroid/text/util/Rfc822Token;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v3, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    move-object v2, v1

    .local v2, arr$:[Landroid/text/util/Rfc822Token;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 497
    .local v0, address:Landroid/text/util/Rfc822Token;
    new-instance v6, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 500
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    :cond_0
    new-instance v6, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v6, v3}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Ljava/util/List;)V

    return-object v6
.end method

.method public init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 2
    .parameter "popupManager"
    .parameter "slotContainer"
    .parameter "spec"
    .parameter "value"

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/SlotView;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setInputType(I)V

    .line 102
    const v0, 0xa0020

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setRawInputType(I)V

    .line 107
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$1;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAngleBracketHider:Landroid/text/method/TransformationMethod;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setAngleBracketsEnabled(Z)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    return-void
.end method

.method public inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 505
    instance-of v5, p1, Lcom/google/android/voicesearch/actions/TextValue;

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 506
    check-cast v4, Lcom/google/android/voicesearch/actions/TextValue;

    .line 507
    .local v4, textValue:Lcom/google/android/voicesearch/actions/TextValue;
    new-instance v5, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputContact(Lcom/google/android/voicesearch/actions/Contact;)Z

    move-result v3

    .line 522
    .end local v4           #textValue:Lcom/google/android/voicesearch/actions/TextValue;
    :goto_0
    return v3

    .line 508
    :cond_0
    instance-of v5, p1, Lcom/google/android/voicesearch/actions/ContactsValue;

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 509
    check-cast v2, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 510
    .local v2, list:Lcom/google/android/voicesearch/actions/ContactsValue;
    const/4 v3, 0x0

    .line 511
    .local v3, success:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 512
    invoke-virtual {v2, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    .line 513
    .local v0, contact:Lcom/google/android/voicesearch/actions/Contact;
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputContact(Lcom/google/android/voicesearch/actions/Contact;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    .end local v0           #contact:Lcom/google/android/voicesearch/actions/Contact;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    goto :goto_0

    .line 519
    .end local v1           #i:I
    .end local v2           #list:Lcom/google/android/voicesearch/actions/ContactsValue;
    .end local v3           #success:Z
    :cond_2
    const-string v5, "ContactSlot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inputted SlotValue of unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->stopAutoCompleting()V

    .line 370
    return-void
.end method

.method protected onParentScrolled()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopupPosition()V

    .line 147
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 351
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->requestLayout()V

    .line 353
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    .line 356
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    if-eqz v0, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->startAutoCompleting()V

    .line 361
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    .line 363
    :cond_2
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onScrollChanged(IIII)V

    .line 375
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopup()V

    .line 376
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 538
    invoke-super {p0, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 539
    .local v0, result:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 540
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    .line 541
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopup()V

    move v0, v1

    .line 544
    .end local v0           #result:Z
    :cond_0
    return v0
.end method

.method protected onValueChanged()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 141
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopup()V

    .line 142
    return-void
.end method

.method public refreshAppearance()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshHighlights()V

    .line 136
    return-void
.end method

.method public setAddressType(I)V
    .locals 0
    .parameter "addressType"

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    .line 128
    return-void
.end method

.method public setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z

    .line 531
    :cond_0
    return-void
.end method
