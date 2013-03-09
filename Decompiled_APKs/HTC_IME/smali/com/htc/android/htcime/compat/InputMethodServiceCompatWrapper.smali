.class public Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputMethodServiceCompatWrapper.java"


# static fields
.field public static final CAN_HANDLE_ON_CURRENT_INPUT_METHOD_SUBTYPE_CHANGED:Z = true


# instance fields
.field private mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

.field protected mOptionsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method

.method protected static setTouchableRegionCompat(Landroid/inputmethodservice/InputMethodService$Insets;IIII)V
    .locals 1
    .parameter "outInsets"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    const/4 v0, 0x3

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 91
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Region;->set(IIII)Z

    .line 92
    return-void
.end method


# virtual methods
.method public notifyOnCurrentInputMethodSubtypeChanged(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 0
    .parameter "newSubtype"

    .prologue
    .line 62
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 46
    invoke-static {}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    .line 47
    return-void
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "subtype"

    .prologue
    .line 84
    invoke-static {}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getInstance()Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    move-result-object v0

    new-instance v1, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {v1, p1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateSubtype(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V

    .line 86
    return-void
.end method

.method public showOptionDialogInternal(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 41
    return-void
.end method
