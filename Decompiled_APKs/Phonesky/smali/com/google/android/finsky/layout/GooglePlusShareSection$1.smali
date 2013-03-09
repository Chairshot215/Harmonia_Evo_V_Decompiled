.class Lcom/google/android/finsky/layout/GooglePlusShareSection$1;
.super Ljava/lang/Object;
.source "GooglePlusShareSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$owner:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$owner:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z
    invoke-static {v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$000(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z
    invoke-static {v0, v7}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$002(Lcom/google/android/finsky/layout/GooglePlusShareSection;Z)Z

    .line 163
    const-string v0, "https://music.google.com/music/sharepreview?storeId=%s&u=0&source=androidmarket-mobile"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateUi()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    .line 167
    new-instance v1, Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$owner:Landroid/accounts/Account;

    const-string v5, "sj"

    invoke-direct {v1, v0, v4, v5}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 168
    .local v1, authenticator:Lcom/android/volley/toolbox/Authenticator;
    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;

    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->createJsonListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;
    invoke-static {v4, v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$300(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;
    invoke-static {v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$400(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;-><init>(Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {v6, v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$202(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$500(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {v4}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$200(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 171
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareGooglePlus?doc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v3, "+1"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "c"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$600(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
