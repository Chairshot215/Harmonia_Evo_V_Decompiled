.class Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;
.super Ljava/lang/Object;
.source "ZeroQueryCachingWebSuggestSource.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    .line 100
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;->this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 102
    const-string v0, "search_history"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;->this$0:Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;

    const/4 v1, 0x1

    #calls: Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->validateCache(Z)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->access$000(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Z)V

    .line 105
    :cond_0
    return-void
.end method
