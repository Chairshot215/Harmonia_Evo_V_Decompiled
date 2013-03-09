.class Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;
.super Ljava/lang/Object;
.source "HtcClockSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/setting/HtcClockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneAdapter:Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$000(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->getItemId(I)J

    move-result-wide v12

    long-to-int v6, v12

    .line 79
    .local v6, index:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onItemClick~ index:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " position:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 80
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$100(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, checkIndex:I
    if-ne v6, v3, :cond_2

    .line 83
    iget-object v13, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$200(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    #setter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z
    invoke-static {v13, v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$202(Lcom/htc/clock3dwidget/setting/HtcClockSetting;Z)Z

    .line 84
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCheckImg:Landroid/widget/CheckBox;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$300(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Landroid/widget/CheckBox;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z
    invoke-static {v13}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$200(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    const-string v12, "onItemClick~ mShowCurrentCity"

    invoke-static {v12}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 192
    .end local v3           #checkIndex:I
    :cond_0
    :goto_1
    return-void

    .line 83
    .restart local v3       #checkIndex:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 94
    .end local v3           #checkIndex:I
    :cond_2
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$100(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 95
    add-int/lit8 v6, v6, -0x1

    .line 96
    :cond_3
    if-ltz v6, :cond_0

    .line 97
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    invoke-virtual {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 98
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "widget_city_reset"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 99
    .local v2, bCityReset:Z
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mAllDataList:Ljava/util/List;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$400(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 100
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move v10, v6

    .line 101
    .local v10, tmpindex:I
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasCurrentLocation()Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v2, :cond_4

    .line 102
    add-int/lit8 v10, v10, -0x1

    .line 104
    :cond_4
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$500(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_5

    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$500(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_6

    .line 106
    :cond_5
    add-int/lit8 v10, v10, -0x1

    .line 108
    :cond_6
    const/4 v4, 0x0

    .line 113
    .local v4, cityname:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    invoke-virtual {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "name"

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 114
    const-string v4, "Current City"

    .line 125
    :goto_2
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$500(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_a

    .line 126
    const-string v12, "code2_"

    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :goto_3
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$500(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_b

    .line 135
    new-instance v5, Landroid/content/Intent;

    const-string v12, "OpenSettings"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v5, dualIntent:Landroid/content/Intent;
    const-string v12, "com.htc.clock3dwidget"

    const-string v13, "com.htc.clock3dwidget.setting.HtcClockSetting"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 138
    const-string v12, "index"

    const/4 v13, 0x7

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    const/4 v13, 0x3

    invoke-virtual {v12, v5, v13}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 115
    .end local v5           #dualIntent:Landroid/content/Intent;
    :cond_7
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    invoke-virtual {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06002e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "name"

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "id"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_8

    .line 117
    const-string v4, "Home City"

    goto :goto_2

    .line 119
    :cond_8
    const/4 v12, -0x1

    if-le v10, v12, :cond_9

    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$600(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v12

    array-length v12, v12

    if-ge v10, v12, :cond_9

    .line 120
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$600(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 122
    :cond_9
    const-string v12, "name"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cityname:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #cityname:Ljava/lang/String;
    goto :goto_2

    .line 129
    :cond_a
    const-string v12, "code_"

    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v12, "show_"

    iget-object v13, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z
    invoke-static {v13}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$200(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Z

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 142
    :cond_b
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$500(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_e

    .line 145
    const/4 v12, -0x1

    if-le v10, v12, :cond_c

    .line 146
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$600(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v12

    aget-object v8, v12, v10

    .line 149
    .local v8, loc:Lcom/htc/util/weather/WeatherLocation;
    const-string v12, "Unit"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v12, "name_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v12, "state_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v12, "country_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v12, "code_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v12, "latitude_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v12, "longitude_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v12, "timezone_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v12, "app_"

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v12, "currentLocation"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    .end local v8           #loc:Lcom/htc/util/weather/WeatherLocation;
    :goto_4
    if-nez v2, :cond_e

    .line 168
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasWeatherWallpaper()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 169
    new-instance v11, Landroid/content/Intent;

    const-string v12, "OpenWWPSettings"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v11, wwpIntent:Landroid/content/Intent;
    const-string v12, "com.htc.clock3dwidget"

    const-string v13, "com.htc.clock3dwidget.setting.HtcWWPSetting"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {v11, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 172
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    const/4 v13, 0x2

    invoke-virtual {v12, v11, v13}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 160
    .end local v11           #wwpIntent:Landroid/content/Intent;
    :cond_c
    const-string v12, "currentLocation"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 176
    :cond_d
    const-string v12, "wwp_play_"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    :cond_e
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mIsCustomer:Z
    invoke-static {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$700(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 181
    const-string v12, "folder"

    iget-object v13, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderName:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$800(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v12, "parent folder id"

    iget-object v13, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderId:I
    invoke-static {v13}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->access$900(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    :cond_f
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    const/4 v13, -0x1

    invoke-virtual {v12, v13, v7}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->setResult(ILandroid/content/Intent;)V

    .line 186
    iget-object v12, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcClockSetting;

    invoke-virtual {v12}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->finish()V

    goto/16 :goto_1
.end method
