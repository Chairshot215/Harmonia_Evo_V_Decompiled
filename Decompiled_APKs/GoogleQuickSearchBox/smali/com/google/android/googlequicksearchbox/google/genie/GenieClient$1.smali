.class Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;
.super Ljava/lang/Object;
.source "GenieClient.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;->this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 108
    const-string v0, "search_history"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;->this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    #getter for: Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->access$000(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;->this$0:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    #calls: Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->access$100(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requireRefreshedAuthTokenType(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method
