.class Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;
.super Ljava/lang/Object;
.source "BaseSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->onSuggestionClicked()V

    .line 192
    return-void
.end method
