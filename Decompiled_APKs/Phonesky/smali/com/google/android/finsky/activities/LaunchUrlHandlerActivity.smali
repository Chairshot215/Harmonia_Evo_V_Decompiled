.class public Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;
.super Landroid/app/Activity;
.source "LaunchUrlHandlerActivity.java"


# static fields
.field private static final BASE_DETAILS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "http://market.android.com/details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->BASE_DETAILS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getGoToMarketHomeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static handleUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/analytics/Analytics;)Landroid/content/Intent;
    .locals 23
    .parameter "context"
    .parameter "input"
    .parameter "appStates"
    .parameter "analytics"

    .prologue
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 88
    .local v17, uri:Landroid/net/Uri;
    const-string v20, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, encodedContinuation:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 90
    const-string v20, "Launch URL without continue URL"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "http"

    invoke-virtual/range {v20 .. v21}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "market.android.com"

    invoke-virtual/range {v20 .. v21}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "details"

    invoke-virtual/range {v20 .. v21}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    .line 100
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-static/range {p0 .. p1}, Lcom/google/android/finsky/utils/IntentUtils;->createForwardToMainActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 171
    :cond_0
    :goto_0
    return-object v10

    .line 105
    :cond_1
    const-string v20, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, packageName:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 107
    const-string v20, "Launch URL without package name"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getGoToMarketHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_0

    .line 112
    :cond_2
    const-string v20, "min_version"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 113
    .local v18, version:Ljava/lang/String;
    const/16 v19, -0x1

    .line 114
    .local v19, versionCode:I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 116
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 123
    :cond_3
    :goto_1
    const/4 v11, -0x1

    .line 125
    .local v11, localVersion:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v4

    .line 126
    .local v4, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v4, :cond_4

    iget-object v0, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 127
    iget-object v0, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v11, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 129
    :cond_4
    if-ltz v11, :cond_5

    move/from16 v0, v19

    if-lt v11, v0, :cond_5

    const/4 v13, 0x1

    .line 132
    .local v13, newEnough:Z
    :goto_2
    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, decodedUrl:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 134
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-static {v15, v14, v6}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 136
    .local v5, canResolveUrl:Z
    new-instance v20, Landroid/net/Uri$Builder;

    invoke-direct/range {v20 .. v20}, Landroid/net/Uri$Builder;-><init>()V

    const-string v21, "launchDeepLink"

    invoke-virtual/range {v20 .. v21}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "url"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "min_version"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "new_enough"

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "can_resolve"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 144
    .local v12, logUrl:Landroid/net/Uri;
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v13, :cond_6

    if-eqz v5, :cond_6

    .line 149
    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v10, intent:Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 154
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->cancel(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v14, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v5           #canResolveUrl:Z
    .end local v6           #decodedUrl:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #logUrl:Landroid/net/Uri;
    .end local v13           #newEnough:Z
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 159
    .restart local v5       #canResolveUrl:Z
    .restart local v6       #decodedUrl:Ljava/lang/String;
    .restart local v12       #logUrl:Landroid/net/Uri;
    .restart local v13       #newEnough:Z
    .restart local v15       #pm:Landroid/content/pm/PackageManager;
    :cond_6
    const-string v20, "referrer"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 162
    .local v16, referrer:Ljava/lang/String;
    sget-object v20, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->BASE_DETAILS_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 163
    .local v8, detailsUri:Landroid/net/Uri$Builder;
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 166
    const-string v20, "referrer"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    :cond_7
    new-instance v7, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v7, detailsIntent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/finsky/utils/IntentUtils;->createForwardToMainActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_0

    .line 117
    .end local v4           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v5           #canResolveUrl:Z
    .end local v6           #decodedUrl:Ljava/lang/String;
    .end local v7           #detailsIntent:Landroid/content/Intent;
    .end local v8           #detailsUri:Landroid/net/Uri$Builder;
    .end local v11           #localVersion:I
    .end local v12           #logUrl:Landroid/net/Uri;
    .end local v13           #newEnough:Z
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #referrer:Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getGoToMarketHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, homeIntent:Landroid/content/Intent;
    sget-object v2, Lcom/google/android/finsky/config/G;->launchUrlsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    .line 64
    .local v0, appStates:Lcom/google/android/finsky/appstate/AppStates;
    new-instance v2, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;-><init>(Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;Landroid/content/Intent;Lcom/google/android/finsky/appstate/AppStates;)V

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
