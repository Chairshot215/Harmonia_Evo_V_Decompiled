.class Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "SuggestiveAutoCompleteTextView.java"

# interfaces
.implements Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "newText"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->doAfterTextChanged()V

    .line 360
    return-void
.end method
