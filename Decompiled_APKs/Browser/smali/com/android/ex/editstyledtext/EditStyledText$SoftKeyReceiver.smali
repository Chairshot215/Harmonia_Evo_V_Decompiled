.class Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;
.super Landroid/os/ResultReceiver;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftKeyReceiver"
.end annotation


# instance fields
.field mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field mNewEnd:I

.field mNewStart:I


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 1
    .parameter "est"

    .prologue
    .line 1981
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1982
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 1983
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1987
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1990
    :cond_0
    return-void
.end method
