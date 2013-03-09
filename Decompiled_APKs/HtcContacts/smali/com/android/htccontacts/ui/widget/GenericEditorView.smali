.class public Lcom/android/htccontacts/ui/widget/GenericEditorView;
.super Landroid/widget/RelativeLayout;
.source "GenericEditorView.java"

# interfaces
.implements Lcom/android/htccontacts/model/Editor;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/ui/widget/EditorElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;
    }
.end annotation


# static fields
.field protected static final INPUT_TYPE_CUSTOM:I = 0x2001

.field protected static final RES_FIELD:I = 0x7f030047

.field protected static final RES_LABEL_ITEM:I = 0x20900ad

.field private static filterChar:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mCustomerDialog:Landroid/app/Dialog;

.field protected mDelete:Landroid/view/View;

.field protected mEditTextMaxLength:I

.field protected mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

.field protected mFields:Landroid/view/ViewGroup;

.field protected mHideOptional:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mKind:Lcom/android/htccontacts/model/DataKind;

.field protected mLabel:Landroid/widget/TextView;

.field private mLabelDialog:Landroid/app/Dialog;

.field protected mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

.field protected mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

.field protected mMore:Landroid/view/View;

.field private mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

.field private mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

.field protected mState:Lcom/android/htccontacts/model/EntityDelta;

.field protected mType:Lcom/android/htccontacts/model/AccountType$EditType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    .line 95
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->DEBUG:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mHideOptional:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEditTextMaxLength:I

    .line 88
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    .line 89
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->DEBUG:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mHideOptional:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEditTextMaxLength:I

    .line 88
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    .line 89
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    .line 111
    return-void
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->filterChar:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/ui/widget/GenericEditorView;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/widget/GenericEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->rebuildLabel()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/ui/widget/GenericEditorView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 355
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 356
    .local v1, customType:Landroid/widget/EditText;
    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 357
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 359
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a0163

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 361
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 363
    const v2, 0x104000a

    new-instance v3, Lcom/android/htccontacts/ui/widget/GenericEditorView$1;

    invoke-direct {v3, p0, v1}, Lcom/android/htccontacts/ui/widget/GenericEditorView$1;-><init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 377
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 379
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private rebuildLabel()V
    .locals 6

    .prologue
    .line 147
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    if-nez v4, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/htccontacts/model/EntityModifier;->ensureFallbackAccountType(Landroid/content/Context;)Lcom/android/htccontacts/model/FallbackAccountType;

    move-result-object v1

    .line 149
    .local v1, fallback:Lcom/android/htccontacts/model/FallbackAccountType;
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v5, v5, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/android/htccontacts/model/EntityModifier;->getCurrentTypeFromFallbackAccountType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;Lcom/android/htccontacts/model/FallbackAccountType;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v3

    .line 150
    .local v3, tType:Lcom/android/htccontacts/model/AccountType$EditType;
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v4}, Lcom/android/htccontacts/model/EntityModifier;->hasEditTypes(Lcom/android/htccontacts/model/DataKind;)Z

    move-result v2

    .line 151
    .local v2, hasType:Z
    if-eqz v2, :cond_0

    .line 152
    const/4 v3, 0x0

    .line 154
    :cond_0
    if-eqz v3, :cond_2

    .line 155
    iget-object v4, v3, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v5, v3, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, customText:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 159
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .end local v0           #customText:Ljava/lang/String;
    .end local v1           #fallback:Lcom/android/htccontacts/model/FallbackAccountType;
    .end local v2           #hasType:Z
    .end local v3           #tType:Lcom/android/htccontacts/model/AccountType$EditType;
    :goto_0
    return-void

    .line 163
    .restart local v1       #fallback:Lcom/android/htccontacts/model/FallbackAccountType;
    .restart local v2       #hasType:Z
    .restart local v3       #tType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    iget v5, v3, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    const v5, 0x7f0a016e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 171
    .end local v1           #fallback:Lcom/android/htccontacts/model/FallbackAccountType;
    .end local v2           #hasType:Z
    .end local v3           #tType:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_3
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget-object v4, v4, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 173
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget-object v5, v5, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0       #customText:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 175
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    .end local v0           #customText:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget v5, v5, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private rebuildValues()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 201
    return-void
.end method


# virtual methods
.method public createLabelDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v4

    .line 391
    .local v4, validTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 392
    :cond_0
    const/4 v1, 0x0

    .line 444
    :goto_0
    return-object v1

    .line 395
    :cond_1
    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    const v2, 0x103000c

    invoke-direct {v8, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 397
    .local v8, dialogContext:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 399
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/ui/widget/GenericEditorView$2;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    const v3, 0x20900ad

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ui/widget/GenericEditorView$2;-><init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 414
    .local v0, typeAdapter:Landroid/widget/ListAdapter;
    new-instance v7, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;

    invoke-direct {v7, p0, v4}, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;-><init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Ljava/util/List;)V

    .line 441
    .local v7, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a015c

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 444
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public getElementType()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->createLabelDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 452
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 453
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 456
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 457
    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 463
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 466
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 467
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 471
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    if-eqz v3, :cond_3

    .line 473
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    invoke-interface {v3, p0}, Lcom/android/htccontacts/model/Editor$EditorListener;->onDeleted(Lcom/android/htccontacts/model/Editor;)V

    .line 475
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    if-eqz v3, :cond_0

    .line 476
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 477
    .local v2, value:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v6, v3, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_4

    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/htccontacts/ui/widget/EditorMonitor;->onEditorDeleted(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 482
    .end local v1           #parent:Landroid/view/ViewGroup;
    .end local v2           #value:Ljava/lang/Long;
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mHideOptional:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mHideOptional:Z

    .line 483
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->rebuildValues()V

    goto :goto_0

    .line 482
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 449
    :pswitch_data_0
    .packed-switch 0x7f0700c7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 522
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 525
    :cond_0
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;

    .line 527
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 530
    :cond_1
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabelDialog:Landroid/app/Dialog;

    .line 531
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "column"
    .parameter "value"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    iget-boolean v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->isExtracted:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->append(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    :cond_0
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    if-eqz p2, :cond_1

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMore:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public requestFocusEditableView()V
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 508
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setDeletable(Z)V
    .locals 2
    .parameter "deletable"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setEditTextMaxLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 340
    iput p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEditTextMaxLength:I

    .line 341
    return-void
.end method

.method public setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 496
    return-void
.end method

.method public setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    .line 135
    return-void
.end method

.method public setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    .line 512
    return-void
.end method

.method public setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 19
    .parameter "kind"
    .parameter "entry"
    .parameter "state"

    .prologue
    .line 208
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    .line 209
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 210
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    .line 212
    invoke-virtual/range {p2 .. p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v15

    if-nez v15, :cond_1

    .line 214
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 223
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/model/EntityModifier;->hasEditTypes(Lcom/android/htccontacts/model/DataKind;)Z

    move-result v6

    .line 224
    .local v6, hasTypes:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v6, :cond_9

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    if-eqz v6, :cond_2

    .line 226
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->getCurrentType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->rebuildLabel()V

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, hidePossible:Z
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 237
    .local v4, field:Lcom/android/htccontacts/model/AccountType$EditField;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v16, 0x7f030047

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 238
    .local v13, vg:Landroid/view/ViewGroup;
    const v15, 0x7f070018

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 240
    .local v5, fieldView:Landroid/widget/EditText;
    iget v15, v4, Lcom/android/htccontacts/model/AccountType$EditField;->titleRes:I

    if-lez v15, :cond_3

    .line 241
    iget v15, v4, Lcom/android/htccontacts/model/AccountType$EditField;->titleRes:I

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setHint(I)V

    .line 243
    :cond_3
    iget v15, v4, Lcom/android/htccontacts/model/AccountType$EditField;->inputType:I

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 244
    const/4 v15, 0x3

    iget v0, v4, Lcom/android/htccontacts/model/AccountType$EditField;->inputType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 245
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 247
    :cond_4
    iget v15, v4, Lcom/android/htccontacts/model/AccountType$EditField;->minLines:I

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setMinLines(I)V

    .line 249
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEditTextMaxLength:I

    if-lez v15, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEditTextMaxLength:I

    invoke-static {v5, v15}, Lcom/android/htccontacts/util/ContactsUtils;->restrainTextViewLength(Landroid/widget/TextView;I)V

    .line 253
    :cond_5
    iget-object v2, v4, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 254
    .local v2, column:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 256
    .local v12, value:Ljava/lang/String;
    const-string v15, "vnd.android.cursor.item/note"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 259
    new-instance v15, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;-><init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Lcom/android/htccontacts/ui/widget/GenericEditorView$1;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mNoteExtractor:Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;

    invoke-virtual {v15, v12}, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->extract(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, newValue:Ljava/lang/String;
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 264
    .local v10, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v15, -0x2

    iput v15, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .end local v9           #newValue:Ljava/lang/String;
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    :goto_3
    new-instance v15, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;-><init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    iget-boolean v15, v4, Lcom/android/htccontacts/model/AccountType$EditField;->optional:Z

    if-eqz v15, :cond_c

    const/4 v3, 0x1

    .line 313
    .local v3, couldHide:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mHideOptional:Z

    if-eqz v15, :cond_d

    if-eqz v3, :cond_d

    const/4 v14, 0x1

    .line 315
    .local v14, willHide:Z
    :goto_5
    if-eqz v14, :cond_e

    const/16 v15, 0x8

    :goto_6
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    if-nez v7, :cond_7

    if-eqz v3, :cond_f

    :cond_7
    const/4 v7, 0x1

    .line 318
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 319
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 323
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 224
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #couldHide:Z
    .end local v4           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v5           #fieldView:Landroid/widget/EditText;
    .end local v7           #hidePossible:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #value:Ljava/lang/String;
    .end local v13           #vg:Landroid/view/ViewGroup;
    .end local v14           #willHide:Z
    :cond_9
    const/16 v15, 0x8

    goto/16 :goto_1

    .line 266
    .restart local v2       #column:Ljava/lang/String;
    .restart local v4       #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .restart local v5       #fieldView:Landroid/widget/EditText;
    .restart local v7       #hidePossible:Z
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v12       #value:Ljava/lang/String;
    .restart local v13       #vg:Landroid/view/ViewGroup;
    :cond_a
    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 267
    if-eqz v12, :cond_6

    .line 268
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 269
    .local v11, trimmingValue:Ljava/lang/String;
    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 273
    .end local v11           #trimmingValue:Ljava/lang/String;
    :cond_b
    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 312
    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 313
    .restart local v3       #couldHide:Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_5

    .line 315
    .restart local v14       #willHide:Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_6

    .line 316
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 327
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #couldHide:Z
    .end local v4           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v5           #fieldView:Landroid/widget/EditText;
    .end local v12           #value:Ljava/lang/String;
    .end local v13           #vg:Landroid/view/ViewGroup;
    .end local v14           #willHide:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMore:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v7, :cond_11

    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMore:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 327
    :cond_11
    const/16 v15, 0x8

    goto :goto_8
.end method

.method public unsetEditTextMaxLength()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEditTextMaxLength:I

    .line 345
    return-void
.end method
