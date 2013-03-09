.class Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;
.super Ljava/lang/Object;
.source "WebSearchSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->onSuggestionQueryRefineClicked()V

    .line 55
    return-void
.end method
