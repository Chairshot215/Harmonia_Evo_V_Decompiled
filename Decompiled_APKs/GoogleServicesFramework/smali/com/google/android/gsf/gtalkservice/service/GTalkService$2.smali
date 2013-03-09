.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;->refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic val$oldToken:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->val$oldToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->val$oldToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingRefreshAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;->val$username:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->authTokenFetched(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method
