.class Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;
.super Landroid/database/DataSetObserver;
.source "ZeroQueryCachingWebSuggestSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/database/DataSetObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;->this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;->this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    const/4 v1, 0x1

    #calls: Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->validateCache(Z)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->access$000(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Z)V

    .line 97
    return-void
.end method
