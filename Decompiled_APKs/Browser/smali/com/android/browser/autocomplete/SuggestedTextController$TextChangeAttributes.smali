.class Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextChangeAttributes"
.end annotation


# instance fields
.field public final mCountAfter:I

.field public final mCountBefore:I

.field private mHandled:Z

.field public final mPos:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "pos"
    .parameter "countAfter"
    .parameter "countBefore"

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mPos:I

    .line 344
    iput p2, p0, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mCountAfter:I

    .line 345
    iput p3, p0, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mCountBefore:I

    .line 346
    return-void
.end method


# virtual methods
.method public isHandled()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mHandled:Z

    return v0
.end method

.method public setHandled()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeAttributes;->mHandled:Z

    .line 350
    return-void
.end method
