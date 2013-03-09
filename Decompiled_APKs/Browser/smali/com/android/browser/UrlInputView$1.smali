.class Lcom/android/browser/UrlInputView$1;
.super Landroid/database/DataSetObserver;
.source "UrlInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/UrlInputView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/UrlInputView;


# direct methods
.method constructor <init>(Lcom/android/browser/UrlInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/browser/UrlInputView$1;->this$0:Lcom/android/browser/UrlInputView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/browser/UrlInputView$1;->this$0:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/browser/UrlInputView$1;->this$0:Lcom/android/browser/UrlInputView;

    #calls: Lcom/android/browser/UrlInputView;->dispatchChange()V
    invoke-static {v0}, Lcom/android/browser/UrlInputView;->access$000(Lcom/android/browser/UrlInputView;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/browser/UrlInputView$1;->this$0:Lcom/android/browser/UrlInputView;

    #calls: Lcom/android/browser/UrlInputView;->dispatchChange()V
    invoke-static {v0}, Lcom/android/browser/UrlInputView;->access$000(Lcom/android/browser/UrlInputView;)V

    .line 131
    return-void
.end method
