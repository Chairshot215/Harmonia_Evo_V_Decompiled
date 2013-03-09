.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mExitClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mExitClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
