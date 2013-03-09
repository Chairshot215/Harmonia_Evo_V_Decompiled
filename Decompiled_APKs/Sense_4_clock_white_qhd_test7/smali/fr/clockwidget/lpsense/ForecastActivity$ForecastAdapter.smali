.class public Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForecastActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/ForecastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForecastAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfr/clockwidget/lpsense/ForecastActivity;


# direct methods
.method public constructor <init>(Lfr/clockwidget/lpsense/ForecastActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 147
    iput-object p1, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    iput-object p2, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 149
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 150
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object p2, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mContext:Landroid/content/Context;

    .end local p2
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 165
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030004

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 169
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .restart local p2
    :cond_0
    const v9, 0x7f0a0009

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 170
    .local v4, icon:Landroid/widget/ImageView;
    const v9, 0x7f0a000a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, day:Landroid/widget/TextView;
    const v9, 0x7f0a000b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, condition:Landroid/widget/TextView;
    const v9, 0x7f0a000d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 173
    .local v6, low:Landroid/widget/TextView;
    const v9, 0x7f0a000c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 176
    .local v3, high:Landroid/widget/TextView;
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;

    iget-object v9, p3, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->dayOfWeek:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;

    iget-object v1, p3, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->condition:Ljava/lang/String;

    .line 180
    .local v1, conditionString:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 181
    :cond_1
    const-string v1, "N/A"

    .line 183
    :cond_2
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    invoke-virtual {v9}, Lfr/clockwidget/lpsense/ForecastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v1}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->getWeatherCondition(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v9, 0x1

    invoke-static {v1, v9}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->getWeatherIcon(Ljava/lang/String;Z)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;

    iget v8, p3, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->low:I

    .line 190
    .local v8, tempLow:I
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;

    iget v7, p1, Lfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;->high:I

    .line 191
    .local v7, tempHigh:I
    const/high16 v9, -0x8000

    if-eq v8, v9, :cond_3

    const/high16 v9, -0x8000

    if-ne v7, v9, :cond_4

    .line 192
    :cond_3
    const-string v9, "N/A"

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const-string v9, "N/A"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    return-object p2

    .line 195
    :cond_4
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    invoke-virtual {v9}, Lfr/clockwidget/lpsense/ForecastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    #getter for: Lfr/clockwidget/lpsense/ForecastActivity;->useCelsius:Z
    invoke-static {v10}, Lfr/clockwidget/lpsense/ForecastActivity;->access$0(Lfr/clockwidget/lpsense/ForecastActivity;)Z

    move-result v10

    invoke-static {v9, v8, v10}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->formatTemp(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v9, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    invoke-virtual {v9}, Lfr/clockwidget/lpsense/ForecastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->this$0:Lfr/clockwidget/lpsense/ForecastActivity;

    #getter for: Lfr/clockwidget/lpsense/ForecastActivity;->useCelsius:Z
    invoke-static {v10}, Lfr/clockwidget/lpsense/ForecastActivity;->access$0(Lfr/clockwidget/lpsense/ForecastActivity;)Z

    move-result v10

    invoke-static {v9, v7, v10}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->formatTemp(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setItem(ILfr/clockwidget/lpsense/ForecastActivity$WeatherForecast;)V
    .locals 1
    .parameter "position"
    .parameter "it"

    .prologue
    .line 153
    if-ltz p1, :cond_0

    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastActivity$ForecastAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
