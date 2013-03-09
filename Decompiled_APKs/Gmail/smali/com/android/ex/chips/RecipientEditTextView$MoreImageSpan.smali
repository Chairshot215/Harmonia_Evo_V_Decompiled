.class Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
.super Landroid/text/style/ImageSpan;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreImageSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2423
    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2424
    return-void
.end method
