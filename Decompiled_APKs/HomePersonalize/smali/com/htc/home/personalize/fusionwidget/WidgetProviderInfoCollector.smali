.class public final Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;
.super Ljava/lang/Object;
.source "WidgetProviderInfoCollector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final WIDGET_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.rosie.host_app.intent.action.UPDATE_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->WIDGET_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProviderByStyleName(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 10
    .parameter "context"
    .parameter "style"

    .prologue
    const/4 v4, 0x0

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v9, selBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 135
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "style not recognized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-object v4

    .line 137
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "style not recognized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_1
    const/4 v6, 0x0

    .line 141
    goto :goto_0

    .line 144
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 145
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "more than one style shared the same component! Return the first one found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, providerStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 149
    .local v7, provider:Landroid/content/ComponentName;
    if-eqz v8, :cond_4

    .line 150
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 151
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_5
    const/4 v6, 0x0

    move-object v4, v7

    .line 153
    goto :goto_0
.end method

.method public static getStyleByComponent(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .locals 10
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v9, selBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 97
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_COMP_NAME:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 106
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "component not recognized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-object v4

    .line 108
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "component not recognized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    const/4 v6, 0x0

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 116
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "more than one style shared the same component! Return the first one found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_3
    invoke-static {v7, v6}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->styleAtCursor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v8

    .line 119
    .local v8, s:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_4
    const/4 v6, 0x0

    move-object v4, v8

    .line 121
    goto :goto_0
.end method

.method public static getStylesByProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 59
    .local v8, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v10, selBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->PROVIDER:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v1, v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .end local v10           #selBuilder:Ljava/lang/StringBuilder;
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    if-nez v6, :cond_1

    .line 91
    :goto_1
    return-object v4

    .line 70
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_2
    const/4 v6, 0x0

    .line 80
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {v8, v6}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->styleAtCursor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v9

    .line 84
    .local v9, s:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    if-eqz v9, :cond_4

    .line 85
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_5
    const/4 v6, 0x0

    move-object v4, v7

    .line 91
    goto :goto_1
.end method

.method public static getWidgetPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 24
    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->INFO:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v0}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    .local v1, widgetProvider:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 32
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 33
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->fromCusor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v8

    .line 35
    .local v8, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info;>;"
    if-eqz v6, :cond_1

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_0
    const/4 v6, 0x0

    .line 39
    :cond_1
    return-object v8
.end method

.method public static getWidgetStyles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 53
    :cond_1
    return-object v2

    .line 46
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    .line 48
    .local v0, i:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    const-string v4, "WidgetProvider"

    iget-object v5, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v4, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-static {p0, v4}, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->getStylesByProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
