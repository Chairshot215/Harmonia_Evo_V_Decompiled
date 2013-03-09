.class Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SuggestiveAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    #getter for: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->access$700(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)Lcom/android/browser/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    new-instance v1, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver$1;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 747
    :cond_0
    return-void
.end method
