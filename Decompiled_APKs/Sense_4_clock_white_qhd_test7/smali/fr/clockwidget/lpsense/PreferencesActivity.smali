.class public Lfr/clockwidget/lpsense/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;
    }
.end annotation


# static fields
.field public static final BUG_REPORT_URL:Ljava/lang/String; = "http://lpsense.allo-mobile.fr"

.field private static final DLG_ATTENTION:I = 0x1

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_DONATE:I = 0x4

.field private static final DLG_HELP:I = 0x3

.field private static final DLG_LOADING:I = 0x2

.field public static final DONATE_MARKET_URI:Landroid/net/Uri; = null

.field public static final DONATE_PAYPAL_URI:Landroid/net/Uri; = null

.field static final KEY_ABOUT:Ljava/lang/String; = "prefs_about"

.field static final KEY_ALT_LATITUDE:Ljava/lang/String; = "prefs_alt_latitude"

.field static final KEY_ALT_LOCATION:Ljava/lang/String; = "prefs_alt_location"

.field static final KEY_ALT_LONGITUDE:Ljava/lang/String; = "prefs_alt_longitude"

.field static final KEY_ALT_POSTAL:Ljava/lang/String; = "prefs_alt_postal"

.field static final KEY_APP_PICKER_CLOCK:Ljava/lang/String; = "prefs_app_picker_clock"

.field static final KEY_APP_PICKER_DATE:Ljava/lang/String; = "prefs_app_picker_date"

.field static final KEY_APP_PICKER_TYPE:Ljava/lang/String; = "prefs_app_picker_type"

.field static final KEY_APP_PICKER_WEATHER:Ljava/lang/String; = "prefs_app_picker_weather"

.field static final KEY_AUTO_REFRESH:Ljava/lang/String; = "prefs_auto_refresh"

.field static final KEY_CLOCK_TAP:Ljava/lang/String; = "prefs_clock_tap"

.field static final KEY_CLOCK_TAP_ACT:Ljava/lang/String; = "prefs_clock_tap_act"

.field static final KEY_CLOCK_TAP_APP:Ljava/lang/String; = "prefs_clock_tap_app"

.field static final KEY_CLOCK_TAP_PKG:Ljava/lang/String; = "prefs_clock_tap_pkg"

.field static final KEY_COMPATIBILITY_MODE:Ljava/lang/String; = "prefs_compatibility_mode"

.field static final KEY_DATE_TAP:Ljava/lang/String; = "prefs_date_tap"

.field static final KEY_DATE_TAP_ACT:Ljava/lang/String; = "prefs_date_tap_act"

.field static final KEY_DATE_TAP_APP:Ljava/lang/String; = "prefs_date_tap_app"

.field static final KEY_DATE_TAP_PKG:Ljava/lang/String; = "prefs_date_tap_pkg"

.field static final KEY_DONATE:Ljava/lang/String; = "prefs_donate"

.field static final KEY_HELP:Ljava/lang/String; = "prefs_help"

.field static final KEY_INSTALLED_VERSION:Ljava/lang/String; = "prefs_installed_version"

.field static final KEY_LAST_REFRESH:Ljava/lang/String; = "prefs_last_refresh"

.field static final KEY_LATITUDE:Ljava/lang/String; = "prefs_latitude"

.field static final KEY_LOCATION:Ljava/lang/String; = "prefs_location"

.field static final KEY_LONGITUDE:Ljava/lang/String; = "prefs_longitude"

.field static final KEY_NEXT_REFRESH:Ljava/lang/String; = "prefs_next_refresh"

.field static final KEY_POSTAL:Ljava/lang/String; = "prefs_postal"

.field static final KEY_REFRESH_INTERVAL:Ljava/lang/String; = "prefs_refresh_interval"

.field static final KEY_REFRESH_NOW:Ljava/lang/String; = "prefs_refresh_now"

.field static final KEY_REFRESH_STATUS:Ljava/lang/String; = "prefs_refresh_status"

.field static final KEY_USE_24HR:Ljava/lang/String; = "prefs_use_24hr"

.field static final KEY_USE_CELSIUS:Ljava/lang/String; = "prefs_use_celsius"

.field static final KEY_USE_GPS:Ljava/lang/String; = "prefs_use_gps"

.field static final KEY_USE_MY_LOCATION:Ljava/lang/String; = "prefs_use_my_location"

.field static final KEY_WEATHER_TAP:Ljava/lang/String; = "prefs_weather_tap"

.field static final KEY_WEATHER_TAP_ACT:Ljava/lang/String; = "prefs_weather_tap_act"

.field static final KEY_WEATHER_TAP_APP:Ljava/lang/String; = "prefs_weather_tap_app"

.field static final KEY_WEATHER_TAP_PKG:Ljava/lang/String; = "prefs_weather_tap_pkg"

.field private static final LOCATION_REFRESH_TIMEOUT:J = 0x7530L

.field public static final MIN_LOCATION_ACCURACY:F = 5000.0f

.field static final PACKAGE_NAME:Ljava/lang/String; = "fr.clockwidget.lpsense"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WEATHER_RETRIAL_INTERVAL:J = 0x36ee80L

.field public static final WEBSITE_URL:Ljava/lang/String; = "http://lpsense.allo-mobile.fr"

.field private static mLocationReady:Z

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static refreshTask:Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

.field static versionName:Ljava/lang/String;


# instance fields
.field private final locationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-class v0, Lfr/clockwidget/lpsense/PreferencesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->TAG:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->versionName:Ljava/lang/String;

    .line 105
    sput-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    sput-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->refreshTask:Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationReady:Z

    .line 121
    const-string v0, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=VUDWFXRJS558E&lc=US&item_name=Fancy%20Widget%20Donation&item_number=FANCYWIDGET&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->DONATE_PAYPAL_URI:Landroid/net/Uri;

    .line 122
    const-string v0, "market://search?q=pname:fr.clockwidget.lpsense.donate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->DONATE_MARKET_URI:Landroid/net/Uri;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 974
    new-instance v0, Lfr/clockwidget/lpsense/PreferencesActivity$1;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/PreferencesActivity$1;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->locationListener:Landroid/location/LocationListener;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/PreferencesActivity;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->showLoadingMsg()V

    return-void
.end method

.method static synthetic access$10(Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    sput-object p0, Lfr/clockwidget/lpsense/PreferencesActivity;->refreshTask:Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    return-void
.end method

.method static synthetic access$11()Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->refreshTask:Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    return-object v0
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 107
    sput-boolean p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationReady:Z

    return-void
.end method

.method static synthetic access$3(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->registerLocationListener()V

    return-void
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationReady:Z

    return v0
.end method

.method static synthetic access$5(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->useLastLocation()V

    return-void
.end method

.method static synthetic access$6(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->refreshWeather()V

    return-void
.end method

.method static synthetic access$7(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1055
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$8(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->dismissLoadingMsg()V

    return-void
.end method

.method static synthetic access$9(Lfr/clockwidget/lpsense/PreferencesActivity;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-direct {p0, p1, p2, p3}, Lfr/clockwidget/lpsense/PreferencesActivity;->updateRefreshStatus(ZJ)V

    return-void
.end method

.method public static final autoRefresh()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 824
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 827
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_auto_refresh"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private dismissLoadingMsg()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/PreferencesActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final getAltLatitude()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 744
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_alt_latitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public static final getAltLocation()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 728
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_alt_location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getAltLongitude()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 760
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_alt_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public static final getAltPostal()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 709
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 712
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_alt_postal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getEffectiveLatitude()F
    .locals 3

    .prologue
    .line 795
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLatitude()F

    move-result v0

    .line 796
    .local v0, latitude:F
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 797
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, postal:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 799
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltLatitude()F

    move-result v0

    .line 802
    .end local v1           #postal:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static final getEffectiveLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 784
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, location:Ljava/lang/String;
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, postal:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 788
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltLocation()Ljava/lang/String;

    move-result-object v0

    .line 791
    .end local v1           #postal:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final getEffectiveLongitude()F
    .locals 3

    .prologue
    .line 806
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLongitude()F

    move-result v0

    .line 807
    .local v0, longitude:F
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 808
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, postal:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 810
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltLongitude()F

    move-result v0

    .line 813
    .end local v1           #postal:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static final getEffectivePostal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 773
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPostal()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, postal:Ljava/lang/String;
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 775
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 777
    :cond_0
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPostal()Ljava/lang/String;

    move-result-object v0

    .line 780
    :cond_1
    return-object v0
.end method

.method public static getLastUpdate()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 831
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 832
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_last_refresh"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 834
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static final getLatitude()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 680
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_latitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public static final getLocation()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 664
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getLongitude()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 693
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 696
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public static getNextUpdate()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 847
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_next_refresh"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 850
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static final getPostal()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 648
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_postal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getRefreshInterval()J
    .locals 6

    .prologue
    .line 863
    const/4 v1, 0x3

    .line 865
    .local v1, option:I
    :try_start_0
    sget-object v3, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "prefs_refresh_interval"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, pref:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 870
    .end local v2           #pref:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->getRefreshValue(I)J

    move-result-wide v3

    return-wide v3

    .line 867
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 868
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private static final getRefreshValue(I)J
    .locals 2
    .parameter "option"

    .prologue
    .line 874
    const-wide/32 v0, 0x6ddd00

    .line 875
    .local v0, refreshInterval:J
    packed-switch p0, :pswitch_data_0

    .line 901
    const-wide/32 v0, 0x6ddd00

    .line 904
    :goto_0
    return-wide v0

    .line 877
    :pswitch_0
    const-wide/32 v0, 0xdbba0

    .line 878
    goto :goto_0

    .line 880
    :pswitch_1
    const-wide/32 v0, 0x1b7740

    .line 881
    goto :goto_0

    .line 883
    :pswitch_2
    const-wide/32 v0, 0x36ee80

    .line 884
    goto :goto_0

    .line 886
    :pswitch_3
    const-wide/32 v0, 0x6ddd00

    .line 887
    goto :goto_0

    .line 889
    :pswitch_4
    const-wide/32 v0, 0xa4cb80

    .line 890
    goto :goto_0

    .line 892
    :pswitch_5
    const-wide/32 v0, 0x1499700

    .line 893
    goto :goto_0

    .line 895
    :pswitch_6
    const-wide/32 v0, 0x2932e00

    .line 896
    goto :goto_0

    .line 898
    :pswitch_7
    const-wide/32 v0, 0x5265c00

    .line 899
    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static final getTapAction(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 574
    .local v1, option:I
    :try_start_0
    sget-object v3, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, pref:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 579
    .end local v2           #pref:Ljava/lang/String;
    :goto_0
    return v1

    .line 576
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 577
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getTapActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 615
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 618
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTapApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 583
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 586
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTapPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 599
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 602
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final initPreferences(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 546
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 547
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 549
    :cond_0
    return-void
.end method

.method public static final isPreFroyo()Z
    .locals 4

    .prologue
    .line 552
    const/4 v1, 0x1

    .line 554
    .local v1, preFroyo:Z
    :try_start_0
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 555
    .local v2, sdkVersion:I
    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 556
    const/4 v1, 0x0

    .line 561
    .end local v2           #sdkVersion:I
    :cond_0
    :goto_0
    return v1

    .line 558
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 559
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private refresh()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v13, "prefs_date_tap_app"

    const-string v12, "prefs_clock_tap_app"

    const-string v11, ""

    .line 470
    const-string v8, "prefs_clock_tap"

    invoke-virtual {p0, v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 471
    .local v1, clockTapPref:Landroid/preference/ListPreference;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    const-string v8, "prefs_clock_tap_app"

    invoke-virtual {p0, v12}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 475
    .local v0, clockTapAppPref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 476
    const-string v8, "prefs_clock_tap"

    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapAction(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_8

    move v8, v9

    :goto_0
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 477
    const-string v8, "prefs_clock_tap_app"

    invoke-static {v12}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    const-string v8, ""

    move-object v8, v11

    :goto_1
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    :cond_1
    const-string v8, "prefs_date_tap"

    invoke-virtual {p0, v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 481
    .local v3, dateTapPref:Landroid/preference/ListPreference;
    if-eqz v3, :cond_2

    .line 482
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 484
    :cond_2
    const-string v8, "prefs_date_tap_app"

    invoke-virtual {p0, v13}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 485
    .local v2, dateTapAppPref:Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 486
    const-string v8, "prefs_date_tap"

    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapAction(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_a

    move v8, v9

    :goto_2
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 487
    const-string v8, "prefs_date_tap_app"

    invoke-static {v13}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    const-string v8, ""

    move-object v8, v11

    :goto_3
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    :cond_3
    const-string v8, "prefs_location"

    invoke-virtual {p0, v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 491
    .local v5, setLocationPref:Landroid/preference/Preference;
    if-eqz v5, :cond_4

    .line 492
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v8

    if-eqz v8, :cond_c

    move v8, v10

    :goto_4
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 493
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltLocation()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d

    const-string v8, ""

    move-object v8, v11

    :goto_5
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    :cond_4
    const-string v8, "prefs_refresh_interval"

    invoke-virtual {p0, v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 497
    .local v4, refreshIntervalPref:Landroid/preference/ListPreference;
    if-eqz v4, :cond_5

    .line 498
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    :cond_5
    const-string v8, "prefs_weather_tap"

    invoke-virtual {p0, v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 502
    .local v7, weatherTapPref:Landroid/preference/ListPreference;
    if-eqz v7, :cond_6

    .line 503
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    :cond_6
    const-string v8, "prefs_weather_tap_app"

    invoke-virtual {p0, v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 506
    .local v6, weatherTapAppPref:Landroid/preference/Preference;
    if-eqz v6, :cond_7

    .line 507
    const-string v8, "prefs_weather_tap"

    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapAction(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_e

    move v8, v9

    :goto_6
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 508
    const-string v8, "prefs_weather_tap_app"

    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_f

    const-string v8, ""

    move-object v8, v11

    :goto_7
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    :cond_7
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->autoRefresh()Z

    move-result v8

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getRefreshInterval()J

    move-result-wide v9

    invoke-direct {p0, v8, v9, v10}, Lfr/clockwidget/lpsense/PreferencesActivity;->updateRefreshStatus(ZJ)V

    .line 512
    return-void

    .end local v2           #dateTapAppPref:Landroid/preference/Preference;
    .end local v3           #dateTapPref:Landroid/preference/ListPreference;
    .end local v4           #refreshIntervalPref:Landroid/preference/ListPreference;
    .end local v5           #setLocationPref:Landroid/preference/Preference;
    .end local v6           #weatherTapAppPref:Landroid/preference/Preference;
    .end local v7           #weatherTapPref:Landroid/preference/ListPreference;
    :cond_8
    move v8, v10

    .line 476
    goto/16 :goto_0

    .line 477
    :cond_9
    const-string v8, "prefs_clock_tap_app"

    invoke-static {v12}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .restart local v2       #dateTapAppPref:Landroid/preference/Preference;
    .restart local v3       #dateTapPref:Landroid/preference/ListPreference;
    :cond_a
    move v8, v10

    .line 486
    goto/16 :goto_2

    .line 487
    :cond_b
    const-string v8, "prefs_date_tap_app"

    invoke-static {v13}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .restart local v5       #setLocationPref:Landroid/preference/Preference;
    :cond_c
    move v8, v9

    .line 492
    goto :goto_4

    .line 493
    :cond_d
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltLocation()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .restart local v4       #refreshIntervalPref:Landroid/preference/ListPreference;
    .restart local v6       #weatherTapAppPref:Landroid/preference/Preference;
    .restart local v7       #weatherTapPref:Landroid/preference/ListPreference;
    :cond_e
    move v8, v10

    .line 507
    goto :goto_6

    .line 508
    :cond_f
    const-string v8, "prefs_weather_tap_app"

    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->getTapApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7
.end method

.method private refreshWeather()V
    .locals 6

    .prologue
    .line 1062
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1063
    .local v0, postal:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1064
    :cond_0
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1067
    :cond_1
    :goto_1
    new-instance v1, Lfr/clockwidget/lpsense/weather/GoogleWeather;

    invoke-direct {v1, p0, v0}, Lfr/clockwidget/lpsense/weather/GoogleWeather;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1068
    .local v1, weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->request()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1069
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->persist()V

    .line 1070
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    .line 1076
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setLastUpdate(J)V

    .line 1077
    return-void

    .line 1062
    .end local v0           #postal:Ljava/lang/String;
    .end local v1           #weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    :cond_2
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1064
    .restart local v0       #postal:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 1073
    .restart local v1       #weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    goto :goto_2
.end method

.method private registerLocationListener()V
    .locals 8

    .prologue
    .line 995
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->removeLocationListener()V

    .line 996
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x0

    sput-boolean v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationReady:Z

    .line 998
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useGPS()Z

    move-result v7

    .line 1000
    .local v7, useGPS:Z
    :try_start_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1001
    if-eqz v7, :cond_0

    .line 1002
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v7           #useGPS:Z
    :cond_0
    :goto_0
    return-void

    .line 1004
    .restart local v7       #useGPS:Z
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1005
    .local v6, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->useLastLocation()V

    goto :goto_0
.end method

.method private removeLocationListener()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public static declared-synchronized saveLocation(Landroid/content/Context;FF)V
    .locals 5
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1026
    const-class v0, Lfr/clockwidget/lpsense/PreferencesActivity;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 1027
    invoke-static {p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->setLatitude(F)V

    .line 1028
    invoke-static {p2}, Lfr/clockwidget/lpsense/PreferencesActivity;->setLongitude(F)V

    .line 1029
    float-to-double v1, p1

    float-to-double v3, p2

    invoke-static {p0, v1, v2, v3, v4}, Lfr/clockwidget/lpsense/SetLocation;->refreshGeoLocation(Landroid/content/Context;DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    monitor-exit v0

    return-void

    .line 1026
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final setAltLatitude(F)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 748
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 749
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 750
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_alt_latitude"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 751
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 753
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setAltLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 732
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 733
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 734
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_alt_location"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 737
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setAltLongitude(F)V
    .locals 2
    .parameter "lng"

    .prologue
    .line 764
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 765
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 766
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_alt_longitude"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setAltPostal(Ljava/lang/String;)V
    .locals 2
    .parameter "postal"

    .prologue
    .line 716
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 717
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 718
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_alt_postal"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 719
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 721
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setLastUpdate(J)V
    .locals 2
    .parameter "lastUpdate"

    .prologue
    .line 838
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 839
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 840
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_last_refresh"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 841
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 843
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setLatitude(F)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 684
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 685
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 686
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_latitude"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 689
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 668
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 669
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 670
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_location"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 671
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 673
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setLongitude(F)V
    .locals 2
    .parameter "lng"

    .prologue
    .line 700
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 701
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 702
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_longitude"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 705
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setNextUpdate(J)V
    .locals 2
    .parameter "nextUpdate"

    .prologue
    .line 854
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 855
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 856
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_next_refresh"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 859
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setPostal(Ljava/lang/String;)V
    .locals 2
    .parameter "postal"

    .prologue
    .line 652
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 653
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 654
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs_postal"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setTapActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tapAct"

    .prologue
    .line 622
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 623
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 624
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setTapApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tapApp"

    .prologue
    .line 590
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 591
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 592
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 595
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static final setTapPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tapPkg"

    .prologue
    .line 606
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 607
    sget-object v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 608
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private showLoadingMsg()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/PreferencesActivity;->showDialog(I)V

    .line 306
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 1011
    if-eqz p1, :cond_0

    .line 1013
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 1014
    .local v0, accuracy:F
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v1, v3

    .line 1015
    .local v1, latitude:F
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v2, v3

    .line 1016
    .local v2, longitude:F
    invoke-static {p0, v1, v2}, Lfr/clockwidget/lpsense/PreferencesActivity;->saveLocation(Landroid/content/Context;FF)V

    .line 1017
    sget-object v3, Lfr/clockwidget/lpsense/PreferencesActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location update: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " +/-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const v3, 0x459c4000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 1019
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->removeLocationListener()V

    .line 1022
    .end local v0           #accuracy:F
    .end local v1           #latitude:F
    .end local v2           #longitude:F
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationReady:Z

    .line 1023
    return-void
.end method

.method private updateRefreshStatus(ZJ)V
    .locals 13
    .parameter "autoRefresh"
    .parameter "refreshInterval"

    .prologue
    .line 515
    const-string v9, "prefs_refresh_status"

    invoke-virtual {p0, v9}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 516
    .local v7, refreshStatusPref:Landroid/preference/Preference;
    if-eqz v7, :cond_1

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v8, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 519
    .local v0, date:Ljava/util/Date;
    const/4 v1, 0x0

    .line 521
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    const-string v9, "h:mm a, MMM dd"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .restart local v1       #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLastUpdate()J

    move-result-wide v3

    .line 526
    .local v3, lastUpdate:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-nez v9, :cond_2

    .line 527
    const v9, 0x7f08002d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f08002f

    invoke-virtual {p0, v12}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :goto_1
    if-eqz p1, :cond_0

    .line 533
    add-long v5, v3, p2

    .line 534
    .local v5, nextUpdate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-gez v9, :cond_0

    .line 535
    invoke-virtual {v0, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 536
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const v9, 0x7f08002e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .end local v5           #nextUpdate:J
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v3           #lastUpdate:J
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 522
    .restart local v0       #date:Ljava/util/Date;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 523
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #dateFormat:Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 529
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #lastUpdate:J
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 530
    const v9, 0x7f08002d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    :goto_3
    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 537
    .restart local v5       #nextUpdate:J
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2
.end method

.method public static final use24hr()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 568
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_use_24hr"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static final useCelsius()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 817
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 820
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_use_celsius"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static useCompMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 908
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 914
    :goto_0
    return v0

    .line 911
    :cond_0
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->isPreFroyo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_compatibility_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 914
    goto :goto_0
.end method

.method public static final useGPS()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 641
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_use_gps"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private useLastLocation()V
    .locals 4

    .prologue
    .line 1034
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 1036
    const/4 v1, 0x0

    .line 1038
    .local v1, lastLocation:Landroid/location/Location;
    :try_start_0
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1042
    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useGPS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    :try_start_1
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1049
    :cond_0
    :goto_1
    sget-object v2, Lfr/clockwidget/lpsense/PreferencesActivity;->TAG:Ljava/lang/String;

    const-string v3, "Use last location fix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->updateLocation(Landroid/location/Location;)V

    .line 1052
    .end local v1           #lastLocation:Landroid/location/Location;
    :cond_1
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->removeLocationListener()V

    .line 1053
    return-void

    .line 1039
    .restart local v1       #lastLocation:Landroid/location/Location;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1040
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 1045
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1046
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final useMyLocation()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 631
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v2

    .line 634
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_use_my_location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 318
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->refreshTask:Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lfr/clockwidget/lpsense/PreferencesActivity;->refreshTask:Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->cancel(Z)Z

    .line 321
    :cond_0
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->dismissLoadingMsg()V

    .line 322
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-string v24, "http://lpsense.allo-mobile.fr"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lfr/nullwire/trace/ExceptionHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    invoke-static/range {p0 .. p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 131
    const/high16 v24, 0x7f04

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 134
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "fr.clockwidget.lpsense"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 135
    .local v13, info:Landroid/content/pm/PackageInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v24, v0

    sput-object v24, Lfr/clockwidget/lpsense/PreferencesActivity;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v13           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_1
    const-string v24, "location"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/location/LocationManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :goto_1
    const-string v24, "prefs_use_24hr"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 149
    .local v18, use24hrPref:Landroid/preference/Preference;
    const-string v24, "prefs_clock_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 150
    .local v6, clockTapPref:Landroid/preference/Preference;
    const-string v24, "prefs_clock_tap_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 151
    .local v5, clockTapAppPref:Landroid/preference/Preference;
    const-string v24, "prefs_date_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 152
    .local v9, dateTapPref:Landroid/preference/Preference;
    const-string v24, "prefs_date_tap_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 153
    .local v8, dateTapAppPref:Landroid/preference/Preference;
    if-eqz v18, :cond_0

    .line 154
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    :cond_0
    if-eqz v6, :cond_1

    .line 157
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    :cond_1
    if-eqz v5, :cond_2

    .line 160
    new-instance v14, Landroid/content/Intent;

    const-class v24, Lfr/clockwidget/lpsense/AppPickerActivity;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v14, intent:Landroid/content/Intent;
    const-string v24, "prefs_app_picker_type"

    const-string v25, "prefs_app_picker_clock"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v5, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 164
    .end local v14           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v9, :cond_3

    .line 165
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    :cond_3
    if-eqz v8, :cond_4

    .line 168
    new-instance v14, Landroid/content/Intent;

    const-class v24, Lfr/clockwidget/lpsense/AppPickerActivity;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v24, "prefs_app_picker_type"

    const-string v25, "prefs_app_picker_date"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 174
    .end local v14           #intent:Landroid/content/Intent;
    :cond_4
    const-string v24, "prefs_use_my_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 175
    .local v21, useMyLocationPref:Landroid/preference/Preference;
    const-string v24, "prefs_use_gps"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 176
    .local v20, useGPSPref:Landroid/preference/Preference;
    const-string v24, "prefs_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 177
    .local v17, setLocationPref:Landroid/preference/Preference;
    const-string v24, "prefs_use_celsius"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 178
    .local v19, useCelsiusPref:Landroid/preference/Preference;
    const-string v24, "prefs_weather_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 179
    .local v23, weatherTapPref:Landroid/preference/Preference;
    const-string v24, "prefs_weather_tap_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 180
    .local v22, weatherTapAppPref:Landroid/preference/Preference;
    if-eqz v21, :cond_5

    .line 181
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    :cond_5
    if-eqz v20, :cond_6

    .line 184
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    :cond_6
    if-eqz v17, :cond_7

    .line 187
    new-instance v24, Landroid/content/Intent;

    const-class v25, Lfr/clockwidget/lpsense/SetLocation;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 189
    :cond_7
    if-eqz v19, :cond_8

    .line 190
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    :cond_8
    if-eqz v23, :cond_9

    .line 193
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    :cond_9
    if-eqz v22, :cond_a

    .line 196
    new-instance v14, Landroid/content/Intent;

    const-class v24, Lfr/clockwidget/lpsense/AppPickerActivity;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v24, "prefs_app_picker_type"

    const-string v25, "prefs_app_picker_weather"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 202
    .end local v14           #intent:Landroid/content/Intent;
    :cond_a
    const-string v24, "prefs_auto_refresh"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 203
    .local v4, autoRefreshPref:Landroid/preference/Preference;
    if-eqz v4, :cond_b

    .line 204
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    :cond_b
    const-string v24, "prefs_refresh_interval"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 207
    .local v15, refreshIntervalPref:Landroid/preference/Preference;
    if-eqz v15, :cond_c

    .line 208
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    :cond_c
    const-string v24, "prefs_refresh_now"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 213
    .local v16, refreshNowPref:Landroid/preference/Preference;
    if-eqz v16, :cond_d

    .line 214
    new-instance v24, Lfr/clockwidget/lpsense/PreferencesActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$2;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    :cond_d
    const-string v24, "prefs_compatibility_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 225
    .local v7, compModePref:Landroid/preference/Preference;
    if-eqz v7, :cond_e

    .line 227
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->isPreFroyo()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 228
    const/16 v24, 0x0

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 240
    :cond_e
    :goto_2
    const-string v24, "prefs_about"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 241
    .local v3, aboutDialogPref:Landroid/preference/Preference;
    if-eqz v3, :cond_f

    .line 242
    new-instance v24, Lfr/clockwidget/lpsense/PreferencesActivity$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$4;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 254
    const v24, 0x7f08003c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lfr/clockwidget/lpsense/PreferencesActivity;->versionName:Ljava/lang/String;

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    :cond_f
    const-string v24, "prefs_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 259
    .local v12, helpDialogPref:Landroid/preference/Preference;
    if-eqz v12, :cond_10

    .line 260
    new-instance v24, Lfr/clockwidget/lpsense/PreferencesActivity$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$5;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 269
    :cond_10
    const-string v24, "prefs_donate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 270
    .local v10, donateDialogPref:Landroid/preference/Preference;
    if-eqz v10, :cond_11

    .line 271
    new-instance v24, Lfr/clockwidget/lpsense/PreferencesActivity$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$6;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 278
    :cond_11
    return-void

    .line 143
    .end local v3           #aboutDialogPref:Landroid/preference/Preference;
    .end local v4           #autoRefreshPref:Landroid/preference/Preference;
    .end local v5           #clockTapAppPref:Landroid/preference/Preference;
    .end local v6           #clockTapPref:Landroid/preference/Preference;
    .end local v7           #compModePref:Landroid/preference/Preference;
    .end local v8           #dateTapAppPref:Landroid/preference/Preference;
    .end local v9           #dateTapPref:Landroid/preference/Preference;
    .end local v10           #donateDialogPref:Landroid/preference/Preference;
    .end local v12           #helpDialogPref:Landroid/preference/Preference;
    .end local v15           #refreshIntervalPref:Landroid/preference/Preference;
    .end local v16           #refreshNowPref:Landroid/preference/Preference;
    .end local v17           #setLocationPref:Landroid/preference/Preference;
    .end local v18           #use24hrPref:Landroid/preference/Preference;
    .end local v19           #useCelsiusPref:Landroid/preference/Preference;
    .end local v20           #useGPSPref:Landroid/preference/Preference;
    .end local v21           #useMyLocationPref:Landroid/preference/Preference;
    .end local v22           #weatherTapAppPref:Landroid/preference/Preference;
    .end local v23           #weatherTapPref:Landroid/preference/Preference;
    :catch_0
    move-exception v24

    move-object/from16 v11, v24

    .line 144
    .local v11, e:Ljava/lang/Exception;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/PreferencesActivity;->mLocationManager:Landroid/location/LocationManager;

    goto/16 :goto_1

    .line 230
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v4       #autoRefreshPref:Landroid/preference/Preference;
    .restart local v5       #clockTapAppPref:Landroid/preference/Preference;
    .restart local v6       #clockTapPref:Landroid/preference/Preference;
    .restart local v7       #compModePref:Landroid/preference/Preference;
    .restart local v8       #dateTapAppPref:Landroid/preference/Preference;
    .restart local v9       #dateTapPref:Landroid/preference/Preference;
    .restart local v15       #refreshIntervalPref:Landroid/preference/Preference;
    .restart local v16       #refreshNowPref:Landroid/preference/Preference;
    .restart local v17       #setLocationPref:Landroid/preference/Preference;
    .restart local v18       #use24hrPref:Landroid/preference/Preference;
    .restart local v19       #useCelsiusPref:Landroid/preference/Preference;
    .restart local v20       #useGPSPref:Landroid/preference/Preference;
    .restart local v21       #useMyLocationPref:Landroid/preference/Preference;
    .restart local v22       #weatherTapAppPref:Landroid/preference/Preference;
    .restart local v23       #weatherTapPref:Landroid/preference/Preference;
    :cond_12
    new-instance v24, Lfr/clockwidget/lpsense/PreferencesActivity$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$3;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_2

    .line 136
    .end local v4           #autoRefreshPref:Landroid/preference/Preference;
    .end local v5           #clockTapAppPref:Landroid/preference/Preference;
    .end local v6           #clockTapPref:Landroid/preference/Preference;
    .end local v7           #compModePref:Landroid/preference/Preference;
    .end local v8           #dateTapAppPref:Landroid/preference/Preference;
    .end local v9           #dateTapPref:Landroid/preference/Preference;
    .end local v15           #refreshIntervalPref:Landroid/preference/Preference;
    .end local v16           #refreshNowPref:Landroid/preference/Preference;
    .end local v17           #setLocationPref:Landroid/preference/Preference;
    .end local v18           #use24hrPref:Landroid/preference/Preference;
    .end local v19           #useCelsiusPref:Landroid/preference/Preference;
    .end local v20           #useGPSPref:Landroid/preference/Preference;
    .end local v21           #useMyLocationPref:Landroid/preference/Preference;
    .end local v22           #weatherTapAppPref:Landroid/preference/Preference;
    .end local v23           #weatherTapPref:Landroid/preference/Preference;
    .restart local p1
    :catch_1
    move-exception v24

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x7f080045

    const/4 v7, 0x0

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 378
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_0
    return-object v4

    .line 328
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080048

    invoke-virtual {p0, v5}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 329
    const v5, 0x7f08002a

    invoke-virtual {p0, v5}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 330
    invoke-virtual {v4, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 332
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 334
    const v4, 0x7f08001c

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 335
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 336
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 337
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v4, v0

    .line 338
    goto :goto_0

    .line 340
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 342
    invoke-virtual {v4, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 344
    :pswitch_3
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 345
    .local v3, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 361
    .local v2, donateView:Landroid/view/View;
    const v4, 0x7f0a0008

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 362
    .local v1, donatePaypalButton:Landroid/widget/Button;
    new-instance v4, Lfr/clockwidget/lpsense/PreferencesActivity$7;

    invoke-direct {v4, p0}, Lfr/clockwidget/lpsense/PreferencesActivity$7;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f02000e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 375
    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 376
    const v5, 0x104000a

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 18
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, key:Ljava/lang/String;
    const-string v16, "prefs_use_24hr"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "prefs_use_celsius"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 385
    :cond_0
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 386
    const/16 v16, 0x1

    .line 466
    .end local p2
    :goto_0
    return v16

    .line 388
    .restart local p2
    :cond_1
    const-string v16, "prefs_clock_tap"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 389
    move-object/from16 v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v5, v0

    .line 390
    .local v5, clockTapPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 391
    .local v8, idx:I
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v16

    aget-object v16, v16, v8

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    const-string v16, "prefs_clock_tap_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 394
    .local v4, clockTapAppPref:Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 395
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    :goto_1
    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 397
    :cond_2
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 398
    const/16 v16, 0x1

    goto :goto_0

    .line 395
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 400
    .end local v4           #clockTapAppPref:Landroid/preference/Preference;
    .end local v5           #clockTapPref:Landroid/preference/ListPreference;
    .end local v8           #idx:I
    .restart local p2
    :cond_4
    const-string v16, "prefs_date_tap"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 401
    move-object/from16 v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v7, v0

    .line 402
    .local v7, dateTapPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 403
    .restart local v8       #idx:I
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v16

    aget-object v16, v16, v8

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    const-string v16, "prefs_date_tap_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 406
    .local v6, dateTapAppPref:Landroid/preference/Preference;
    if-eqz v6, :cond_5

    .line 407
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    :goto_2
    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    :cond_5
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 410
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 407
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 412
    .end local v6           #dateTapAppPref:Landroid/preference/Preference;
    .end local v7           #dateTapPref:Landroid/preference/ListPreference;
    .end local v8           #idx:I
    .restart local p2
    :cond_7
    const-string v16, "prefs_use_my_location"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 413
    const-string v16, "prefs_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 414
    .local v13, setLocationPref:Landroid/preference/Preference;
    if-eqz v13, :cond_8

    .line 415
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x0

    :goto_3
    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    .line 418
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->requestLocationUpdate()V

    .line 419
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 420
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 415
    :cond_9
    const/16 v16, 0x1

    goto :goto_3

    .line 422
    .end local v13           #setLocationPref:Landroid/preference/Preference;
    .restart local p2
    :cond_a
    const-string v16, "prefs_use_gps"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    .line 424
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->requestLocationUpdate()V

    .line 425
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 426
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 428
    :cond_b
    const-string v16, "prefs_weather_tap"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 429
    move-object/from16 v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v15, v0

    .line 430
    .local v15, weatherTapPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 431
    .restart local v8       #idx:I
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v16

    aget-object v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    const-string v16, "prefs_weather_tap_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 434
    .local v14, weatherTapAppPref:Landroid/preference/Preference;
    if-eqz v14, :cond_c

    .line 435
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    const/16 v16, 0x1

    :goto_4
    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 437
    :cond_c
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 438
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 435
    :cond_d
    const/16 v16, 0x0

    goto :goto_4

    .line 440
    .end local v8           #idx:I
    .end local v14           #weatherTapAppPref:Landroid/preference/Preference;
    .end local v15           #weatherTapPref:Landroid/preference/ListPreference;
    .restart local p2
    :cond_e
    const-string v16, "prefs_auto_refresh"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 441
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getRefreshInterval()J

    move-result-wide v10

    .line 442
    .local v10, refreshInterval:J
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->updateRefreshStatus(ZJ)V

    .line 443
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 445
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLastUpdate()J

    move-result-wide v16

    add-long v16, v16, v10

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 447
    :cond_f
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 449
    .end local v10           #refreshInterval:J
    .restart local p2
    :cond_10
    const-string v16, "prefs_refresh_interval"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 450
    move-object/from16 v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v12, v0

    .line 451
    .local v12, refreshIntervalPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 452
    .restart local v8       #idx:I
    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->getRefreshValue(I)J

    move-result-wide v10

    .line 453
    .restart local v10       #refreshInterval:J
    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v16

    aget-object v16, v16, v8

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLastUpdate()J

    move-result-wide v16

    add-long v16, v16, v10

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 459
    const/16 v16, 0x3

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 460
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->showDialog(I)V

    .line 463
    :cond_11
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->autoRefresh()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->updateRefreshStatus(ZJ)V

    .line 464
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 466
    .end local v8           #idx:I
    .end local v10           #refreshInterval:J
    .end local v12           #refreshIntervalPref:Landroid/preference/ListPreference;
    .restart local p2
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 289
    invoke-direct {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->refresh()V

    .line 290
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 283
    const-string v0, "A2UKWUCUC9K3KHMFZMCB"

    invoke-static {p0, v0}, Lfr/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 295
    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 296
    return-void
.end method
