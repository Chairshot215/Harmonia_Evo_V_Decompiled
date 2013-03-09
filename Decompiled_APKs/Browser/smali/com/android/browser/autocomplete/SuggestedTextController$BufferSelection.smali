.class Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferSelection"
.end annotation


# instance fields
.field final mEnd:I

.field final mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    .line 365
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    .line 366
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 369
    instance-of v1, p1, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 371
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 370
    check-cast v0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;

    .line 371
    .local v0, otherSel:Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;
    iget v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    iget v2, v0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mStart:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    iget v2, v0, Lcom/android/browser/autocomplete/SuggestedTextController$BufferSelection;->mEnd:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
