.class public Lcom/htc/weatheridlescreen/setting/WISSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "WISSetting.java"


# static fields
.field private static final ACTIVITY_RESULT_SELECT_A_CITY:I = 0x0

.field private static final KEY_SELECT_A_CITY:Ljava/lang/String; = "wissetting_select_a_city"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[WISSetting] "


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreSelectCity:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mPreSelectCity:Lcom/htc/preference/HtcPreference;

    .line 26
    iput-object v0, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateSummaryForCity()V
    .locals 6

    .prologue
    .line 47
    iget-object v3, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, mDefaultCityName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const-string v5, "CurrentCity"

    invoke-static {v3, v4, v5}, Lcom/htc/weatheridlescreen/WISPreference;->getStringSharePreference(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, mCityCode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .local v1, mCityName:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    const-string v3, "CurrentCity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    :cond_0
    move-object v1, v2

    .line 58
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mPreSelectCity:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4, v2}, Lcom/htc/weatheridlescreen/WISPreference;->getStringSharePreference(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 84
    if-ne v2, p2, :cond_0

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    return-void

    .line 89
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 91
    const-string v2, "code_"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, code:Ljava/lang/String;
    const-string v2, "name_"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    const-string v2, "CurrentCity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    :cond_1
    const-string v0, "CurrentCity"

    .line 97
    iget-object v2, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mPreSelectCity:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/htc/weatheridlescreen/WISPreference;->setStringSharePreference(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/htc/weatheridlescreen/setting/WISSetting;->addPreferencesFromResource(I)V

    .line 33
    const-string v0, "wissetting_select_a_city"

    invoke-virtual {p0, v0}, Lcom/htc/weatheridlescreen/setting/WISSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mPreSelectCity:Lcom/htc/preference/HtcPreference;

    .line 34
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/setting/WISSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/setting/WISSetting;->updateSummaryForCity()V

    .line 36
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/htc/weatheridlescreen/setting/WISSetting;->mPreSelectCity:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_0

    .line 69
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, myIntent:Landroid/content/Intent;
    const-string v2, "com.htc.WeatherWidget"

    const-string v3, "com.htc.WeatherWidget.OptionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/setting/WISSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1           #myIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    return v2

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WIS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WISSetting] Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 42
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/weatheridlescreen/setting/WISSetting;->setResult(I)V

    .line 43
    return-void
.end method
