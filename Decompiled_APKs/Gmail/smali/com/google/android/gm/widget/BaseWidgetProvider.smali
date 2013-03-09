.class public Lcom/google/android/gm/widget/BaseWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaseWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const v7, 0x7f0f00c2

    const/high16 v6, 0x800

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    invoke-static {p0, p3, p4}, Lcom/google/android/gm/widget/BaseWidgetProvider;->isLabelSynchronized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 245
    const v1, 0x7f0f00d2

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 246
    const v1, 0x7f0f00d2

    invoke-virtual {p1, v1, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    const v1, 0x7f0f00d3

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 248
    const v1, 0x7f0f00d3

    invoke-virtual {p1, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 249
    const v1, 0x7f0f00d4

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 250
    const v1, 0x7f0f00d5

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 253
    const v0, 0x7f0f00d7

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 275
    :goto_0
    const v0, 0x7f0f00d6

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/widget/GmailWidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v1, "account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "label"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p1, p2, v7, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 286
    const/4 v0, 0x0

    invoke-static {p0, p3, p4, v0}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v0

    .line 287
    invoke-static {p0, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 289
    const v2, 0x7f0f00d0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gmailfrom://gmail-ls/account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 295
    const-string v2, "fromgmail"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->from(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    .line 300
    invoke-virtual {v2, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 303
    const v1, 0x7f0f00d5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-static {p0, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 310
    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 311
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    const v0, 0x7f0f00d7

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/LabelSynchronizationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    const-string v1, "account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "label"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "update-widgetid-on-sync-change"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v1, "perform-actions-internally"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    const v1, 0x58008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    invoke-static {p0, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 273
    const v1, 0x7f0f00d7

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private static createWidgetPreferenceValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "label"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentWidgetIds(Landroid/content/Context;)[I
    .locals 7
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 79
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.google.android.gm.widget.GmailWidgetProvider"

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .local v1, gmailComponent:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.google.android.gm.widget.GoogleMailWidgetProvider"

    invoke-direct {v3, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    .local v3, googleMailComponent:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 84
    .local v2, gmailWidgetIds:[I
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 85
    .local v4, googleMailWidgetIds:[I
    const/4 v5, 0x2

    new-array v5, v5, [[I

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/google/common/primitives/Ints;->concat([[I)[I

    move-result-object v5

    return-object v5
.end method

.method private static isAccountValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 159
    if-eqz p1, :cond_1

    .line 160
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 163
    .local v0, accounts:[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 164
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x1

    .line 169
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 163
    .restart local v0       #accounts:[Landroid/accounts/Account;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isLabelSynchronized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 223
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v0

    .line 226
    .local v0, gm:Lcom/google/android/gm/provider/Gmail;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v2

    .line 227
    .local v2, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 230
    .local v3, synchronizedLabelsSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsIncluded()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method public static isWidgetConfigured(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "account"
    .parameter "label"

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-static {p0, p2}, Lcom/google/android/gm/widget/BaseWidgetProvider;->isAccountValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-static {p0}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget-account-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, accountLabel:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 183
    .end local v0           #accountLabel:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method static saveWidgetInformation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget-account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/google/android/gm/widget/BaseWidgetProvider;->createWidgetPreferenceValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 317
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gm/widget/BaseWidgetProvider;->getCurrentWidgetIds(Landroid/content/Context;)[I

    move-result-object v1

    const v2, 0x7f0f00c2

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 319
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0f00d6

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 191
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f040059

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 193
    invoke-static {p0, p2}, Lcom/google/android/gm/widget/BaseWidgetProvider;->isAccountValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 195
    if-nez v0, :cond_0

    .line 197
    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    const v0, 0x7f0f00d3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    const v0, 0x7f0f00d4

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    const v0, 0x7f0f00d5

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v0, 0x7f0f00d7

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/MailboxSelectionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const/high16 v2, 0x800

    invoke-static {p0, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 217
    :goto_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 218
    return-void

    .line 214
    :cond_0
    const-string v5, " "

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/widget/BaseWidgetProvider;->configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 65
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget-account-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    const-string v9, "com.google.android.gm.intent.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, accountToBeUpdated:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 124
    .end local v1           #accountToBeUpdated:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v1       #accountToBeUpdated:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 104
    .local v8, widgetsToUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/google/android/gm/widget/BaseWidgetProvider;->getCurrentWidgetIds(Landroid/content/Context;)[I

    move-result-object v2

    .local v2, arr$:[I
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_3

    aget v4, v2, v3

    .line 106
    .local v4, id:I
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "widget-account-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, accountLabel:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 111
    const-string v9, " "

    invoke-static {v0, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, parsedInfo:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v6           #parsedInfo:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    .end local v0           #accountLabel:Ljava/lang/String;
    .end local v4           #id:I
    :cond_3
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 119
    invoke-static {v8}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v7

    .line 120
    .local v7, widgets:[I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    const v10, 0x7f0f00c2

    invoke-virtual {v9, v7, v10}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 134
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p3

    if-ge v2, v5, :cond_2

    .line 136
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget-account-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, accountLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 140
    .local v0, account:Ljava/lang/String;
    const/4 v3, 0x0

    .line 141
    .local v3, label:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 142
    const-string v5, " "

    invoke-static {v1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, parsedInfo:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 145
    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 146
    const/4 v5, 0x1

    aget-object v3, v4, v5

    .line 154
    .end local v4           #parsedInfo:[Ljava/lang/String;
    :cond_0
    :goto_1
    aget v5, p3, v2

    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gm/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .restart local v4       #parsedInfo:[Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 149
    invoke-static {p1, v0}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 156
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #accountLabel:Ljava/lang/String;
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #parsedInfo:[Ljava/lang/String;
    :cond_2
    return-void
.end method
