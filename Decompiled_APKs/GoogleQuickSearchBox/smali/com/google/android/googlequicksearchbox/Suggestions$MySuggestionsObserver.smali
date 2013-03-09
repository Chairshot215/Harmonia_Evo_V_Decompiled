.class Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;
.super Landroid/database/DataSetObserver;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/Suggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/Suggestions;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/Suggestions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;-><init>(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->notifyDataSetChanged()V

    .line 432
    return-void
.end method
