.class Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$1;
.super Landroid/database/DataSetObserver;
.source "WebSuggestSourceWithLocalHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Landroid/database/DataSetObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$1;->this$0:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$1;->this$0:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;

    #calls: Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->fetchZeroQuerySuggestions()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->access$000(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;)V

    .line 68
    return-void
.end method
