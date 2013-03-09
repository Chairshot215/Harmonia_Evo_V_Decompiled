.class Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;
.super Ljava/lang/Object;
.source "EditStructuredNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditStructuredNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionTextWatcher"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/EditStructuredNameActivity;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentString:Ljava/lang/CharSequence;

.field mPreviousString:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditStructuredNameActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 562
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 563
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;->activityRef:Ljava/lang/ref/WeakReference;

    .line 564
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    .line 567
    .local v0, activity:Lcom/android/htccontacts/ui/EditStructuredNameActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;->mCurrentString:Ljava/lang/CharSequence;

    .line 569
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;->mCurrentString:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;->mPreviousString:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditStructuredNameActivity;->actionNameData()V

    .line 573
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditStructuredNameActivity$ActionTextWatcher;->mPreviousString:Ljava/lang/CharSequence;

    .line 577
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 581
    return-void
.end method
