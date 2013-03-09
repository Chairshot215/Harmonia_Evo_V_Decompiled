.class Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "SuggestiveAutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    #getter for: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;
    invoke-static {v1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->access$700(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)Lcom/android/browser/SuggestionsAdapter;

    move-result-object v0

    .line 737
    .local v0, adapter:Lcom/android/browser/SuggestionsAdapter;
    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/android/browser/SuggestionsAdapter;->getCount()I

    move-result v2

    #calls: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->access$800(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;I)V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    #calls: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->updateText(Lcom/android/browser/SuggestionsAdapter;)V
    invoke-static {v1, v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->access$900(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/SuggestionsAdapter;)V

    .line 744
    return-void
.end method
