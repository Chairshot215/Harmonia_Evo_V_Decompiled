.class public Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;
.super Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;
.source "ContactsAutoCompletePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

.field private mCompleting:Z

.field private mCompletingPoint:Landroid/graphics/Point;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actioneditor/PopupManager;I)V
    .locals 2
    .parameter "context"
    .parameter "popupManager"
    .parameter "addressType"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    .line 58
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mObserver:Landroid/database/DataSetObserver;

    .line 79
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/PopupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public beginCompleting(Landroid/graphics/Point;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    return-void
.end method

.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .parameter "popupRect"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 94
    .local v2, windowManager:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 100
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    return-object v1
.end method

.method public endCompleting()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z

    .line 132
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 133
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 139
    return-void
.end method

.method public moveCompleting(Landroid/graphics/Point;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->move(Landroid/graphics/Point;)V

    .line 123
    return-void
.end method

.method public setCompletionConstraint(Ljava/lang/String;)V
    .locals 2
    .parameter "constraint"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$2;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 157
    return-void
.end method

.method public setShowListener(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    .line 85
    return-void
.end method
