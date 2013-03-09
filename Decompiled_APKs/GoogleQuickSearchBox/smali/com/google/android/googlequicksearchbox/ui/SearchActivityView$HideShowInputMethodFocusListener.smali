.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideShowInputMethodFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "focused"

    .prologue
    .line 925
    if-eqz p2, :cond_1

    .line 927
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->post(Ljava/lang/Runnable;)Z

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$2;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
