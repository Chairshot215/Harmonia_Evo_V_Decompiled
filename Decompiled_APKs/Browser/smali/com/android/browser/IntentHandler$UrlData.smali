.class Lcom/android/browser/IntentHandler$UrlData;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/IntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlData"
.end annotation


# instance fields
.field final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

.field final mSearchBoxQueryToSubmit:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;

.field final mVoiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 368
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 369
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 370
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    .line 371
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 372
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V
    .locals 6
    .parameter "url"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter
    .parameter "intent"
    .parameter "preloaded"
    .parameter "searchBoxQueryToSubmit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "Lcom/android/browser/PreloadedTabControl;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 381
    iput-object p2, p0, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 382
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iput-object p3, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 388
    :goto_0
    iput-object p4, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    .line 389
    iput-object p5, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 390
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method getPreloadedTab()Lcom/android/browser/PreloadedTabControl;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    return-object v0
.end method

.method getSearchBoxQueryToSubmit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPreloaded()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
