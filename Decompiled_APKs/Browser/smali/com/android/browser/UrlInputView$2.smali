.class Lcom/android/browser/UrlInputView$2;
.super Ljava/lang/Object;
.source "UrlInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/UrlInputView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/UrlInputView;

.field final synthetic val$s:I


# direct methods
.method constructor <init>(Lcom/android/browser/UrlInputView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/browser/UrlInputView$2;->this$0:Lcom/android/browser/UrlInputView;

    iput p2, p0, Lcom/android/browser/UrlInputView$2;->val$s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/UrlInputView$2;->this$0:Lcom/android/browser/UrlInputView;

    iget v1, p0, Lcom/android/browser/UrlInputView$2;->val$s:I

    #calls: Lcom/android/browser/UrlInputView;->changeState(I)V
    invoke-static {v0, v1}, Lcom/android/browser/UrlInputView;->access$100(Lcom/android/browser/UrlInputView;I)V

    .line 153
    return-void
.end method
