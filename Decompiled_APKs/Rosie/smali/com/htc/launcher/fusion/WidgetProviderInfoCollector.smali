.class public final Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;
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
    const-class v0, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.rosie.home.intent.action.UPDATE_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->WIDGET_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStyleByComponent(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .locals 10
    .parameter "context"
    .parameter "name"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v9, selBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 82
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
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

    .line 86
    if-eqz p2, :cond_0

    .line 87
    const-string v1, " AND "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->STYLE_TYPE_ID:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbColumn;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    sget-object v1, Lcom/htc/launcher/fusion/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    sget-object v1, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "component not recognized!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-object v4

    .line 99
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 100
    sget-object v1, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "more than one style shared the same component! Return the first one found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    invoke-static {v7, v6}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->styleAtCursor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v8

    .line 103
    .local v8, s:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 104
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

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v10, selBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 56
    .local v8, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 58
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

    .line 60
    sget-object v1, Lcom/htc/launcher/fusion/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->getProjection(Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    :goto_0
    return-object v4

    .line 69
    :cond_0
    invoke-static {v8, v6}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->styleAtCursor(Landroid/content/pm/PackageManager;Landroid/database/Cursor;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v9

    .line 70
    .local v9, s:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    if-eqz v9, :cond_1

    .line 71
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    .line 76
    goto :goto_0
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
    sget-object v1, Lcom/htc/launcher/fusion/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

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
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    return-object v8
.end method

.method public static getWidgetStyles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 40
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 49
    :cond_1
    return-object v2

    .line 43
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
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

    .line 45
    .local v0, i:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    iget-object v4, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-static {p0, v4}, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->getStylesByProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
