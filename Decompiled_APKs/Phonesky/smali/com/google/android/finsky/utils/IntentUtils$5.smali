.class final Lcom/google/android/finsky/utils/IntentUtils$5;
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
    .line 315
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
    .line 326
    const-string v1, "com.google.android.music"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "authAccount"

    invoke-static {v0, v1, p2}, Lcom/google/android/finsky/utils/IntentUtils$5;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$5;->setDefaultFlags(Landroid/content/Intent;)V

    .line 330
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "storeId"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "authAccount"

    invoke-static {v0, v1, p3}, Lcom/google/android/finsky/utils/IntentUtils$5;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-object v0
.end method
