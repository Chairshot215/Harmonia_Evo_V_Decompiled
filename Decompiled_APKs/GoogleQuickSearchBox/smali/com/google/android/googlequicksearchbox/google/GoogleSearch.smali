.class public Lcom/google/android/googlequicksearchbox/google/GoogleSearch;
.super Landroid/app/Activity;
.source "GoogleSearch.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Lcom/google/android/googlequicksearchbox/QsbContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/location/Location;Lcom/google/android/googlequicksearchbox/QsbApplication;)Landroid/content/Intent;
    .locals 15
    .parameter "intent"
    .parameter "context"
    .parameter "location"
    .parameter "qsbApp"

    .prologue
    .line 97
    const-string v12, "query"

    invoke-virtual {p0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, query:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 99
    const-string v12, "QSB.GoogleSearch"

    const-string v13, "Got search intent with no query."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v6, 0x0

    .line 149
    :goto_0
    return-object v6

    .line 103
    :cond_0
    const-string v12, "app_data"

    invoke-virtual {p0, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 109
    .local v1, appSearchData:Landroid/os/Bundle;
    const-string v12, "com.android.browser.application_id"

    invoke-virtual {p0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, applicationId:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 114
    :cond_1
    const-string v12, "from_self"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 115
    .local v4, fromSelf:Z
    const-string v12, "new_search"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 116
    .local v7, newTab:Z
    const-string v12, "query_submit_ts"

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {p0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 121
    .local v9, querySubmissionTime:J
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v13

    invoke-virtual {v13, v1, v4, v9, v10}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchBaseUrl(Landroid/os/Bundle;ZJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p2, :cond_6

    const-string v12, ""

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&q="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v8, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, searchUri:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getUriRewriter()Lcom/google/android/googlequicksearchbox/google/UriRewriter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/googlequicksearchbox/google/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v6, launchUriIntent:Landroid/content/Intent;
    const-string v12, "com.android.browser.application_id"

    invoke-virtual {v6, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    if-eqz v7, :cond_2

    .line 131
    const-string v12, "create_new_tab"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    :cond_2
    sget-boolean v12, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->DBG:Z

    if-eqz v12, :cond_3

    const-string v12, "QSB.GoogleSearch"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Formatting location "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    if-eqz p2, :cond_5

    .line 135
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v5, headers:Landroid/os/Bundle;
    const-string v12, "X-Geo"

    invoke-static/range {p2 .. p2}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v12, "Geo-Position"

    invoke-static/range {p2 .. p2}, Lcom/google/android/googlequicksearchbox/google/GeoPositionEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-boolean v12, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->DBG:Z

    if-eqz v12, :cond_4

    const-string v12, "QSB.GoogleSearch"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Headers: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    const-string v12, "com.android.browser.headers"

    invoke-virtual {v6, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    .end local v5           #headers:Landroid/os/Bundle;
    :cond_5
    const/high16 v12, 0x1000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 147
    .end local v6           #launchUriIntent:Landroid/content/Intent;
    .end local v11           #searchUri:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 148
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v12, "QSB.GoogleSearch"

    const-string v13, "Error"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 121
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    const-string v12, "&action=devloc"
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method private getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 176
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 177
    const-string v2, "QSB.GoogleSearch"

    const-string v3, "Got ACTION_VIEW with no data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 181
    .local v1, viewIntent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    const-string v3, "intent_extra_data_key"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->launchIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-static {p1, p0, v2, v3}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/location/Location;Lcom/google/android/googlequicksearchbox/QsbApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, launchUriIntent:Landroid/content/Intent;
    const-string v2, "web_search_pendingintent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 158
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->launchPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->launchIntent(Landroid/content/Intent;)V

    .line 161
    :cond_1
    return-void
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 192
    :try_start_0
    const-string v1, "QSB.GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "QSB.GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found to handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 4
    .parameter "pending"
    .parameter "fillIn"

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const/4 v1, 0x1

    .line 205
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "QSB.GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending intent cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 210
    const-string v4, "intent_extra_data_key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, extraData:Ljava/lang/String;
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, query:Ljava/lang/String;
    const-string v4, "from_self"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 213
    .local v1, fromSelf:Z
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v4

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v4, v0, v2, v3}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->logClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    return-void

    .line 213
    :cond_0
    const/high16 v3, 0x1000

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "QSB.GoogleSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v2, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 66
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->allowSuggestionLogicCreation()V

    .line 68
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->handleWebSearchIntent(Landroid/content/Intent;)V

    .line 77
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->logIntent(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->finish()V

    .line 81
    return-void

    .line 71
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_2
    const-string v2, "QSB.GoogleSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
