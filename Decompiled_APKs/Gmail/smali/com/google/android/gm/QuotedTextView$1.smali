.class Lcom/google/android/gm/QuotedTextView$1;
.super Ljava/lang/Object;
.source "QuotedTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/QuotedTextView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/QuotedTextView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/QuotedTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gm/QuotedTextView$1;->this$0:Lcom/google/android/gm/QuotedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView$1;->this$0:Lcom/google/android/gm/QuotedTextView;

    #getter for: Lcom/google/android/gm/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/google/android/gm/QuotedTextView;->access$000(Lcom/google/android/gm/QuotedTextView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 51
    .local v0, show:Z
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView$1;->this$0:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/QuotedTextView;->updateQuotedTextVisibility(Z)V

    .line 52
    iget-object v1, p0, Lcom/google/android/gm/QuotedTextView$1;->this$0:Lcom/google/android/gm/QuotedTextView;

    #getter for: Lcom/google/android/gm/QuotedTextView;->mShowHideListener:Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;
    invoke-static {v1}, Lcom/google/android/gm/QuotedTextView;->access$100(Lcom/google/android/gm/QuotedTextView;)Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;->onShowHideQuotedText(Z)V

    .line 53
    return-void
.end method
