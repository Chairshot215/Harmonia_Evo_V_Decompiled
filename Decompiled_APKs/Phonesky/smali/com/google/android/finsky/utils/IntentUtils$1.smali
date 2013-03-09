.class final Lcom/google/android/finsky/utils/IntentUtils$1;
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


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Lcom/google/android/finsky/utils/IntentUtils$1;)V

    return-void
.end method


# virtual methods
.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "pm"
    .parameter "accountName"

    .prologue
    .line 147
    const-string v1, "com.google.android.apps.books"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$1;->setDefaultFlags(Landroid/content/Intent;)V

    .line 150
    const-string v1, "authAccount"

    invoke-static {v0, v1, p2}, Lcom/google/android/finsky/utils/IntentUtils$1;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 158
    sget-object v5, Lcom/google/android/finsky/config/G;->readBookUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 160
    .local v4, uri:Landroid/net/Uri$Builder;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.google.android.apps.books"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const v5, 0x10004000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    const-string v5, "authAccount"

    invoke-static {v1, v5, p3}, Lcom/google/android/finsky/utils/IntentUtils$1;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    .line 166
    .local v3, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 167
    .local v2, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const-string v5, "offerType"

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    .end local v2           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_1
    const-string v5, "books:addToMyEBooks"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    return-object v1
.end method
