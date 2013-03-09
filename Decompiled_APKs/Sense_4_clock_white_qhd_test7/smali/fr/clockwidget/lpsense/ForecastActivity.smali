.class public Lfr/clockwidget/lpsense/ForecastActivity;
.super Landroid/app/ListActivity;
.source "ForecastActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;,
        Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final MAX_FORECAST_DAYS:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field private static final WEATHER_URL:Ljava/lang/String; = "http://mw.weather.com/setloc?q="


# instance fields
.field private mAdapter:Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;

.field private useCelsius:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lfr/clockwidget/lpsense/ForecastActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/ForecastActivity;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/ForecastActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/ForecastActivity;->useCelsius:Z

    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v4, "http://lpsense.allo-mobile.fr"

    invoke-static {p0, v4}, Lfr/nullwire/trace/ExceptionHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/ForecastActivity;->setContentView(I)V

    .line 64
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/ForecastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, title:Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 66
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 67
    .local v3, titleText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/ForecastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 68
    .local v1, dialogPadding:I
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 69
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 70
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/ForecastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/ForecastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    .end local v1           #dialogPadding:I
    .end local v3           #titleText:Landroid/widget/TextView;
    :cond_0
    new-instance v4, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;

    invoke-direct {v4, p0, p0}, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;-><init>(Lfr/clockwidget/lpsense/ForecastActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lfr/clockwidget/lpsense/ForecastActivity;->mAdapter:Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;

    .line 77
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/ForecastActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getEffectivePostal()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, postal:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://mw.weather.com/setloc?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, url:Ljava/lang/String;
    sget-object v4, Lfr/clockwidget/lpsense/ForecastActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v1, linkIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    :try_start_0
    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/ForecastActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1           #linkIntent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1       #linkIntent:Landroid/content/Intent;
    .restart local v3       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f08004c

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 90
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useCelsius()Z

    move-result v1

    iput-boolean v1, p0, Lfr/clockwidget/lpsense/ForecastActivity;->useCelsius:Z

    .line 93
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getEffectiveLocation()Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, location:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 95
    :cond_0
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/ForecastActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/ForecastActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    new-instance v6, Lfr/clockwidget/lpsense/ForecastHelper;

    invoke-direct {v6, p0}, Lfr/clockwidget/lpsense/ForecastHelper;-><init>(Landroid/content/Context;)V

    .line 101
    .local v6, fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    if-eqz v6, :cond_1

    .line 102
    invoke-virtual {v6}, Lfr/clockwidget/lpsense/ForecastHelper;->getForecastTime()J

    move-result-wide v7

    .line 104
    .local v7, forecastTime:J
    const-wide/32 v11, 0xf731400

    add-long/2addr v11, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v1, v11, v13

    if-lez v1, :cond_1

    .line 105
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/4 v1, 0x3

    if-le v9, v1, :cond_3

    .line 115
    .end local v7           #forecastTime:J
    .end local v9           #i:I
    :cond_1
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastActivity;->mAdapter:Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/ForecastActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    return-void

    .line 97
    .end local v6           #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    :cond_2
    const v1, 0x7f08004a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->getCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v1, v11}, Lfr/clockwidget/lpsense/ForecastActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/ForecastActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    .restart local v6       #fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    .restart local v7       #forecastTime:J
    .restart local v9       #i:I
    :cond_3
    invoke-virtual {v6, v9}, Lfr/clockwidget/lpsense/ForecastHelper;->getDayofWeek(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, dayOfWeek:Ljava/lang/String;
    invoke-virtual {v6, v9}, Lfr/clockwidget/lpsense/ForecastHelper;->getCondition(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, condition:Ljava/lang/String;
    invoke-virtual {v6, v9}, Lfr/clockwidget/lpsense/ForecastHelper;->getHigh(I)I

    move-result v4

    .line 109
    .local v4, high:I
    invoke-virtual {v6, v9}, Lfr/clockwidget/lpsense/ForecastHelper;->getLow(I)I

    move-result v5

    .line 110
    .local v5, low:I
    new-instance v0, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;-><init>(Lfr/clockwidget/lpsense/ForecastActivity;Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    .local v0, forecast:Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastActivity;->mAdapter:Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;

    invoke-virtual {v1, v9, v0}, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->setItem(ILfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;)V

    .line 105
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 83
    const-string v0, "A2UKWUCUC9K3KHMFZMCB"

    invoke-static {p0, v0}, Lfr/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 121
    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 122
    return-void
.end method
