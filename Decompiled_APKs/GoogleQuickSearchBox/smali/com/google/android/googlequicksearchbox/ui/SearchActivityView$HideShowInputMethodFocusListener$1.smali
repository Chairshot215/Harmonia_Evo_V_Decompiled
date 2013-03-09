.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$1;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 930
    return-void
.end method
