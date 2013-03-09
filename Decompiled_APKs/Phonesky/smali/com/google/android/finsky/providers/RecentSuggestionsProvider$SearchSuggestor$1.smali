.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$1;
.super Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getIconUri(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

.field final synthetic val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$1;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-direct {p0}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onComplete()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$1;->val$listener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->onComplete()V

    .line 357
    return-void
.end method
