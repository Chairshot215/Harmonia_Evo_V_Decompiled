.class final Lcom/google/android/finsky/utils/IntentUtils$4;
.super Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final BASE_URI:Landroid/net/Uri;

.field private final HOME_URI:Landroid/net/Uri;

.field private final ISSUE_URI:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Lcom/google/android/finsky/utils/IntentUtils$1;)V

    .line 275
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "play.google.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "magazines"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "reader"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->BASE_URI:Landroid/net/Uri;

    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "carousel"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->HOME_URI:Landroid/net/Uri;

    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "issue"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->ISSUE_URI:Landroid/net/Uri;

    return-void
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.magazines"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"
    .parameter "accountName"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/android/finsky/utils/IntentUtils$4;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 298
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->HOME_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 299
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$4;->setDefaultFlags(Landroid/content/Intent;)V

    .line 300
    const-string v1, "authAccount"

    invoke-static {v0, v1, p2}, Lcom/google/android/finsky/utils/IntentUtils$4;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/google/android/finsky/utils/IntentUtils$4;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/utils/IntentUtils$4;->ISSUE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 309
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$4;->setDefaultFlags(Landroid/content/Intent;)V

    .line 310
    const-string v2, "authAccount"

    invoke-static {v0, v2, p3}, Lcom/google/android/finsky/utils/IntentUtils$4;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-object v0
.end method
