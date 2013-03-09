.class Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$3;
.super Landroid/database/DataSetObserver;
.source "SuggestionsPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$3;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$3;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->setForceSuggestionFetch()V

    .line 107
    return-void
.end method
