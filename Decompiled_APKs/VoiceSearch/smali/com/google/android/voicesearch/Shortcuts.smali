.class public Lcom/google/android/voicesearch/Shortcuts;
.super Landroid/app/Activity;
.source "Shortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/Shortcuts$1;,
        Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 198
    return-void
.end method

.method public static addShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldAddShortcut()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p0}, Lcom/google/android/voicesearch/Shortcuts;->getShortcutProviderUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/voicesearch/Shortcuts;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-static {p0, p1, v1}, Lcom/google/android/voicesearch/Shortcuts;->makeShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v1

    .line 104
    const-string v2, "Shortcuts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "Shortcuts"

    const-string v2, "Failed to add shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static findGlobalSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 172
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 174
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/high16 v7, 0x1

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 177
    const-string v7, "Shortcuts"

    const-string v8, "No global search activity found, activities list empty"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-object v6

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 181
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    const-string v7, "com.google.android.voicesearch.SHORTCUTS_ACCESS"

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 184
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    const-string v7, "Shortcuts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wants to handle GLOBAL_SEARCH, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "but does not have permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.google.android.voicesearch.SHORTCUTS_ACCESS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v7, "Shortcuts"

    const-string v8, "No global search activity found"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getShortcutProviderUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 114
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/google/android/voicesearch/Shortcuts;->findGlobalSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 115
    .local v2, globalSearchActivity:Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v6

    .line 119
    :cond_1
    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 121
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 122
    .local v3, metaData:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 125
    const-string v7, "android.app.search.shortcut.provider"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, uriString:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 129
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 130
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #metaData:Landroid/os/Bundle;
    .end local v5           #uriString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Shortcuts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Global search activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static makeShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Landroid/content/ComponentName;)Landroid/content/ContentValues;
    .locals 10
    .parameter "context"
    .parameter "action"
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v4, shortcut:Landroid/content/ContentValues;
    const-string v5, "shortcut_source"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, "user_query"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v5, "suggest_format"

    const-string v6, "html"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v5, "suggest_text_1"

    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutTitleHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v5, "suggest_text_2"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutSubtitleHtml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v5, "suggest_intent_action"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutIntentAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentData(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, data:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 148
    .local v1, dataString:Ljava/lang/String;
    :goto_0
    const-string v5, "suggest_intent_data"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    const-string v5, "suggest_intent_extra_data"

    new-instance v6, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutIntentComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, p0, v8}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;-><init>(Landroid/content/ComponentName;Landroid/os/Bundle;Lcom/google/android/voicesearch/Shortcuts$1;)V

    invoke-virtual {v6}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->convertToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, icon1:Ljava/lang/String;
    const-string v5, "suggest_icon_1"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "suggest_intent_query"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v4

    .line 147
    .end local v1           #dataString:Ljava/lang/String;
    .end local v3           #icon1:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 153
    .restart local v1       #dataString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 154
    .local v2, e:Lorg/json/JSONException;
    const-string v5, "Shortcuts"

    const-string v6, "Conversion to shortcut failed for some variables"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/voicesearch/Shortcuts;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 63
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    .local v5, launchIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.SEARCH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_0
    :try_start_0
    const-string v6, "intent_extra_data_key"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->bundleFromString(Ljava/lang/String;)Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    .local v1, bundleConverter:Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/Shortcuts;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/Shortcuts;->finish()V

    .line 90
    .end local v1           #bundleConverter:Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, e:Lorg/json/JSONException;
    const-string v6, "Shortcuts"

    const-string v7, "Conversion from a string to BundleConverter failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/voicesearch/Shortcuts;->finish()V

    goto :goto_1

    .line 86
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #bundleConverter:Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    :catch_1
    move-exception v3

    .line 87
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "Shortcuts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found to handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
