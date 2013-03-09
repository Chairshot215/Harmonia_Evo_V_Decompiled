.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser$1;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->considerHidingInputMethod()V

    .line 845
    return-void
.end method
