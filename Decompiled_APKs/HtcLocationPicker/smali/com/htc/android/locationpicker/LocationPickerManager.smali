.class public Lcom/htc/android/locationpicker/LocationPickerManager;
.super Landroid/app/Activity;
.source "LocationPickerManager.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/CmdListener;
.implements Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
    }
.end annotation


# static fields
.field public static final ACTION_NAVI_PICK_DEST_FROM_MAP:Ljava/lang/String; = "com.htc.laputa.map.action.NAVI_PICK_DEST_FROM_MAP"

.field public static final ACTION_REVERSE_ADDR_ON_MAP:Ljava/lang/String; = "com.htc.laputa.map.action.REVERSE_ADDR_ON_MAP"

.field public static final ACTION_REVERSE_GEOCODE_ON_MAP:Ljava/lang/String; = "com.htc.laputa.map.action.REVERSE_GEOCODE_ON_MAP"

.field public static final ACTION_SHOW_LOCATION_PICKER_MGR:Ljava/lang/String; = "com.htc.laputa.map.action.SHOW_LOCATION_MGR"

.field private static final CANCEL_REVERSE_GEOCODE:I = 0x6e

.field public static final FILTER_SHOW_ALL_POI:I = 0x5

.field public static final FILTER_SHOW_NO_LANDMARK:I = 0x4

.field public static final HTCNAVI_ACTION_SHOW:Ljava/lang/String; = "com.htc.laputa.navi.action.SHOW_NAVI"

.field public static final HTCNAVI_BUNDLE:Ljava/lang/String; = "HTC_NAVI_BUNDLE"

.field public static final HTCNAVI_DEST_LATITUTE:Ljava/lang/String; = "NAVI_DEST_LATITUDE"

.field public static final HTCNAVI_DEST_LONGITUTE:Ljava/lang/String; = "NAVI_DEST_LONGITUDE"

.field private static final LAT_LON_PATTERN:Ljava/lang/String; = "{0}\u00b0 {1}\'\' {2}\" {3}"

.field public static final LOCATION_MGR_MODE_GENERAL:I = 0x1

.field public static final LOCATION_MGR_MODE_PICKER:I = 0x2

.field public static final LOCATION_PICKER_MGR_BUNDLE:Ljava/lang/String; = "LOCATION_PICKER_MGR_BUNDLE"

.field public static final LOCATION_PICKER_MGR_IS_NEED_REVERSE_GEO:Ljava/lang/String; = "ReverseGeo"

.field public static final LOCATION_PICKER_MGR_LATITUDE:Ljava/lang/String; = "Latitude"

.field public static final LOCATION_PICKER_MGR_LONGITUDE:Ljava/lang/String; = "Longitude"

.field public static final LOCATION_PICKER_MGR_MODE:Ljava/lang/String; = "Mode"

.field public static final LOCATION_PICKER_MGR_REQUEST_CODE:I = 0x2f3

.field public static final LOCATION_PICKER_MGR_RET_BUNDLE:Ljava/lang/String; = "LOCATION_PICKER_MGR_RET_BUNDLE"

.field public static final LOCATION_PICKER_MGR_RET_CITY:Ljava/lang/String; = "Return_City"

.field public static final LOCATION_PICKER_MGR_RET_COUNTRY:Ljava/lang/String; = "Return_Country"

.field public static final LOCATION_PICKER_MGR_RET_COUNTY:Ljava/lang/String; = "Return_County"

.field public static final LOCATION_PICKER_MGR_RET_FULL_ADDRESS:Ljava/lang/String; = "Return_Full_Address"

.field public static final LOCATION_PICKER_MGR_RET_GOOGLE_WEB_LINK:Ljava/lang/String; = "Google_Web_Link"

.field public static final LOCATION_PICKER_MGR_RET_HOUSE_NO:Ljava/lang/String; = "Return_Houseno"

.field public static final LOCATION_PICKER_MGR_RET_LATITUDE:Ljava/lang/String; = "Return_Latitude"

.field public static final LOCATION_PICKER_MGR_RET_LONGITUDE:Ljava/lang/String; = "Return_Longitude"

.field public static final LOCATION_PICKER_MGR_RET_POI:Ljava/lang/String; = "Return_POI"

.field public static final LOCATION_PICKER_MGR_RET_POI_BUNDLE:Ljava/lang/String; = "LOCATION_PICKER_MGR_RET_POI_BUNDLE"

.field public static final LOCATION_PICKER_MGR_RET_STATE:Ljava/lang/String; = "Return_State"

.field public static final LOCATION_PICKER_MGR_RET_STREET:Ljava/lang/String; = "Return_Street"

.field public static final LOCATION_PICKER_MGR_UPDATE_MY_LOC:Ljava/lang/String; = "UpdateMyLocation"

.field public static final MAP_VIEW_BROWSE:Ljava/lang/String; = "com.htc.laputa.map.action.SHOW_MAPVIEW"

.field public static final MAP_VIEW_BUNDLE:Ljava/lang/String; = "HTC_MAP_VIEW_BUNDLE"

.field public static final MAP_VIEW_FILTER_CATEGORY_ID:Ljava/lang/String; = "MAP_VIEW_FILTER_CATEGORY_ID"

.field public static final MAP_VIEW_FILTER_MODE:Ljava/lang/String; = "MAP_VIEW_FILTER_MODE"

.field public static final MAP_VIEW_LATITUDE:Ljava/lang/String; = "MAP_VIEW_LATITUDE"

.field public static final MAP_VIEW_LONGITUDE:Ljava/lang/String; = "MAP_VIEW_LONGITUDE"

.field public static final MAP_VIEW_PICKER_ACTION:Ljava/lang/String; = "com.htc.laputa.map.action.SHOW_LOCATION_PICKER"

.field public static final MAP_VIEW_PICKER_BUNDLE:Ljava/lang/String; = "HTC_MAP_PICKER_BUNDLE"

.field public static final MAP_VIEW_PICKER_LATITUDE:Ljava/lang/String; = "MAP_PICKER_LATITUDE"

.field public static final MAP_VIEW_PICKER_LONGITUDE:Ljava/lang/String; = "MAP_PICKER_LONGITUDE"

.field public static final MAP_VIEW_PICKER_RET_ADDRESS:Ljava/lang/String; = "MAP_PICKER_RET_ADDRESS"

.field public static final MAP_VIEW_PICKER_RET_BUNDLE:Ljava/lang/String; = "MAP_PICKER_RET_BUNDLE"

.field public static final MAP_VIEW_PICKER_RET_LATITUDE:Ljava/lang/String; = "MAP_PICKER_RET_LATITUDE"

.field public static final MAP_VIEW_PICKER_RET_LONGITUDE:Ljava/lang/String; = "MAP_PICKER_RET_LONGITUDE"

.field public static final MAP_VIEW_PICKER_RET_POI:Ljava/lang/String; = "MAP_PICKER_RET_POI"

.field private static final PROCESS_REVERSE_ADDR_RESULT:I = 0xa0

.field public static final REINSTALL_LAPUTA_ACTION:Ljava/lang/String; = "com.htc.laputa.HtcLaputaInstaller.HtcLaputaInstaller"

.field public static final REINSTALL_LAPUTA_EXTRA_DATA:Ljava/lang/String; = "com.htc.laputa.HtcLaputaInstaller.Reinstall"

.field private static final RETURN_FINAL_RESULT:I = 0x8c

.field private static final REVERSE_ADDRESS_TIMOUT:I = 0x2710

.field private static final REVERSE_ADDR_ON_MAP_ACTION:I = 0x96

.field public static final REVERSE_ADDR_ON_MAP_ADDRESS_INFO:Ljava/lang/String; = "Address"

.field public static final REVERSE_ADDR_ON_MAP_BUNDLE:Ljava/lang/String; = "REVERSE_ADDR_ON_MAP_BUNDLE"

.field public static final REVERSE_ADDR_ON_MAP_NAME:Ljava/lang/String; = "Name"

.field public static final REVERSE_ADDR_ON_MAP_PHOTO_IMAGE:Ljava/lang/String; = "PhotoImage"

.field public static final REVERSE_ADDR_ON_MAP_TEL_NUM:Ljava/lang/String; = "Tel"

.field private static final REVERSE_GEOCODE_IN_GENERIC_MODE:I = 0x82

.field public static final REVERSE_GEOCODE_ON_MAP_ADDRESS_INFO:Ljava/lang/String; = "Address"

.field public static final REVERSE_GEOCODE_ON_MAP_BUNDLE:Ljava/lang/String; = "REVERSE_GEOCODE_ON_MAP_BUNDLE"

.field public static final REVERSE_GEOCODE_ON_MAP_PHOTO_IMAGE:Ljava/lang/String; = "PhotoImage"

.field public static final REVERSE_GEOCODE_ON_MAP_TEL_NUM:Ljava/lang/String; = "Tel"

.field private static final REVERSE_GEOCODE_TIMOUT:I = 0x2710

.field private static final SHOW_ERROR_DIALOG_FOR_SHOW_MAP:I = 0x3

.field private static final SHOW_LOCATION_LIST_DIALOG:I = 0x2

.field private static final SHOW_REVERSE_ADDRESS_DIALOG:I = 0x5

.field private static final SHOW_REVERSE_GEOCODE_DIALOG:I = 0x1

.field private static final SHOW_WIFI_DISABLED_DIALOG:I = 0x4

.field private static final START_PICKER_ACTIVITY:I = 0x78

.field private static final TAG:Ljava/lang/String; = "LocationPickerManager"


# instance fields
.field private final MAX_REVERSE_ADDRESS_RESULT_COUNT:I

.field private bIsDestroyStage:Z

.field private m_ContatctName:Ljava/lang/String;

.field private m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

.field private m_PhotoImagePath:Ljava/lang/String;

.field private m_TelNum:Ljava/lang/String;

.field m_addrLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

.field private m_bIsCalledPicker:Z

.field private m_bIsDialogShowing:Z

.field private m_bIsNeedReverseGeoCode:Z

.field private m_bIsPickerReturnedResult:Z

.field private m_bIsReverseGeoCanceled:Z

.field private m_bNeedLaunchNavi:Z

.field private m_bReturnedResultFromPicker:Z

.field private m_bUpdateMyLoc:Z

.field private m_bundlePOI:Landroid/os/Bundle;

.field private m_currentMode:I

.field private m_currentTaskId:I

.field private m_fullAddress:Ljava/lang/String;

.field private m_fullAddressStr:Ljava/lang/String;

.field private m_latitude:D

.field private m_locLists:[Ljava/lang/String;

.field private m_longitude:D

.field private m_resultCode:I

.field m_reverseAddressThread:Ljava/lang/Thread;

.field private m_uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_PhotoImagePath:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_TelNum:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_ContatctName:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_locLists:[Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->MAX_REVERSE_ADDRESS_RESULT_COUNT:I

    .line 120
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bUpdateMyLoc:Z

    .line 121
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->bIsDestroyStage:Z

    .line 123
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    .line 124
    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    .line 125
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsReverseGeoCanceled:Z

    .line 126
    iput v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentTaskId:I

    .line 128
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsDialogShowing:Z

    .line 129
    iput v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_resultCode:I

    .line 150
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bReturnedResultFromPicker:Z

    .line 171
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bNeedLaunchNavi:Z

    .line 178
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsPickerReturnedResult:Z

    .line 179
    iput-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsCalledPicker:Z

    .line 182
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$1;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$1;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/locationpicker/LocationPickerManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/locationpicker/LocationPickerManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/LocationPickerManager;->launchGoogleMapByAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/locationpicker/LocationPickerManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->processAddressListToMap()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/locationpicker/LocationPickerManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->doReInstallLaputa()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/locationpicker/LocationPickerManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doReInstallLaputa()V
    .locals 3

    .prologue
    .line 1089
    const-string v1, "LocationPickerManager"

    const-string v2, "doReInstallLaputa"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.laputa.HtcLaputaInstaller.HtcLaputaInstaller"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.laputa.HtcLaputaInstaller.Reinstall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1092
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1093
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 1095
    return-void
.end method

.method public static geoInt2Double(I)D
    .locals 3
    .parameter "val"

    .prologue
    .line 1163
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1164
    .local v0, bval:Ljava/math/BigDecimal;
    const-wide v1, 0x3eb0c6f7a0b5ed8dL

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getGMMLinkString(DD)Ljava/lang/String;
    .locals 3
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static isChinaProjectRomBuild()Z
    .locals 4

    .prologue
    .line 1099
    const/4 v0, 0x0

    .line 1101
    .local v0, result:Z
    const-string v1, "LocationPickerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinaProjectRomBuild, Htc_LANGUAGE_flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1105
    const/4 v0, 0x1

    .line 1108
    :cond_0
    const-string v1, "LocationPickerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinaProjectRomBuild, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 874
    const/4 v2, 0x0

    .line 875
    .local v2, result:Z
    if-eqz p0, :cond_0

    .line 876
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 877
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 879
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 880
    const/4 v2, 0x1

    .line 884
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private launchGoogleMapByAddress(Ljava/lang/String;)V
    .locals 4
    .parameter "addr"

    .prologue
    .line 1265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    const-string v3, "%2C"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1267
    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 1268
    return-void
.end method

.method private processAddressListToMap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 942
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_reverseAddressThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->dismissDialog(I)V

    .line 947
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_reverseAddressThread:Ljava/lang/Thread;

    .line 949
    const/4 v0, 0x0

    .line 951
    .local v0, resultCount:I
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 953
    :cond_2
    const-string v1, "LocationPickerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reverseAddrToGeoCode, resultCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    if-nez v0, :cond_3

    .line 956
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->showDialog(I)V

    goto :goto_0

    .line 958
    :cond_3
    if-ne v0, v4, :cond_4

    .line 960
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->addressListToStringList(Ljava/util/List;)V

    .line 961
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->startReverseAddrOnMapActivity(I)V

    goto :goto_0

    .line 963
    :cond_4
    if-le v0, v4, :cond_0

    .line 965
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->addressListToStringList(Ljava/util/List;)V

    .line 966
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->showDialog(I)V

    goto :goto_0
.end method

.method private showErrorDialogForShowMap()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 343
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/android/locationpicker/LocationPickerManager$6;

    invoke-direct {v2, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$6;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/android/locationpicker/LocationPickerManager$5;

    invoke-direct {v2, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$5;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/locationpicker/LocationPickerManager$4;

    invoke-direct {v1, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$4;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private showLocationListDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 320
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_locLists:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/android/locationpicker/LocationPickerManager$3;

    invoke-direct {v3, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$3;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/locationpicker/LocationPickerManager$2;

    invoke-direct {v1, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$2;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private showReverseGeoCodeDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 309
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@show dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 312
    invoke-virtual {v0, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 315
    return-object v0
.end method


# virtual methods
.method public addRecentForPickLocation()V
    .locals 11

    .prologue
    const-wide v9, 0x412e848000000000L

    const v8, 0xff04

    .line 1212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1214
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "longitude"

    iget-wide v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1215
    const-string v5, "latitude"

    iget-wide v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1217
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    if-eqz v5, :cond_2

    .line 1219
    const-string v5, "root_category"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1220
    const-string v5, "name"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v5, "country"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v5, "state"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v5, "city"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v5, "county"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getCounty()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v5, "street"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v5, "house_number"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getHouseNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v5, "full_address"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v2, ""

    .line 1229
    .local v2, iconPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 1230
    .local v3, laputaDataPath:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 1231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Data/htc/footprint_img_address_192.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1232
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1233
    const-string v5, "icon_path"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_1
    const v5, 0xff04

    :try_start_0
    invoke-static {v5, v0}, Lcom/htc/laputa/engine/util/CommonUtil;->addRecent(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v1

    .line 1237
    .local v1, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0

    .line 1244
    .end local v1           #e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    .end local v2           #iconPath:Ljava/lang/String;
    .end local v3           #laputaDataPath:Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1245
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    iget-wide v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    mul-double/2addr v5, v9

    double-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationPickerManager;->formatedLat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    iget-wide v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    mul-double/2addr v5, v9

    double-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationPickerManager;->formatedLon(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v5, "name"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v2, ""

    .line 1251
    .restart local v2       #iconPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 1252
    .restart local v3       #laputaDataPath:Ljava/io/File;
    if-eqz v3, :cond_3

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Data/htc/footprint.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1254
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1255
    const-string v5, "icon_path"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :cond_4
    const v5, 0xff04

    :try_start_1
    invoke-static {v5, v0}, Lcom/htc/laputa/engine/util/CommonUtil;->addRecent(ILandroid/os/Bundle;)I
    :try_end_1
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1258
    :catch_1
    move-exception v1

    .line 1259
    .restart local v1       #e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method public addressListToStringList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_locLists:[Ljava/lang/String;

    .line 973
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 975
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 976
    .local v3, oneAddr:Landroid/location/Address;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v3}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 982
    invoke-virtual {v3, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 985
    :cond_0
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_locLists:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 991
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #j:I
    .end local v3           #oneAddr:Landroid/location/Address;
    :cond_1
    return-void
.end method

.method public cancelReverseGeoCode()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsReverseGeoCanceled:Z

    .line 558
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->cancel()V

    .line 560
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_resultCode:I

    .line 561
    return-void
.end method

.method public doMgrServiceAction()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 851
    iget v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    packed-switch v0, :pswitch_data_0

    .line 861
    :goto_0
    return-void

    .line 854
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 858
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doReverseAddrOnMapAction()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 866
    return-void
.end method

.method public doReverseGeoCode()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 523
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    if-ne v1, v3, :cond_1

    .line 526
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/EngineServiceBinder;->isBindSuccess()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 528
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->bIsDestroyStage:Z

    if-nez v1, :cond_0

    .line 530
    const-string v1, "LocationPickerManager"

    const-string v2, "++ #@@doReverseGeoCode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0, v3}, Lcom/htc/android/locationpicker/LocationPickerManager;->showDialog(I)V

    .line 533
    :try_start_0
    new-instance v1, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-direct {v1}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;-><init>()V

    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    .line 534
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    iget-wide v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->setPosition(DD)V

    .line 535
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {v1, p0}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentTaskId:I

    .line 538
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@doReverseGeoCode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v0           #e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    goto :goto_1
.end method

.method public doshowReverseGeocodeOnMapAction()V
    .locals 0

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->startShowReverseGeoCodeOnMap()V

    .line 871
    return-void
.end method

.method public formatedLat(I)Ljava/lang/String;
    .locals 15
    .parameter "latE6"

    .prologue
    .line 1116
    invoke-static/range {p1 .. p1}, Lcom/htc/android/locationpicker/LocationPickerManager;->geoInt2Double(I)D

    move-result-wide v5

    .line 1118
    .local v5, lat:D
    const-string v8, ""

    .line 1120
    .local v8, latStr:Ljava/lang/String;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v11, "00.00"

    invoke-direct {v3, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v3, decFormatter:Ljava/text/DecimalFormat;
    new-instance v9, Ljava/text/MessageFormat;

    const-string v11, "{0}\u00b0 {1}\'\' {2}\" {3}"

    invoke-direct {v9, v11}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v9, mformat:Ljava/text/MessageFormat;
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    .line 1128
    .local v0, argLat:[Ljava/lang/String;
    const/4 v11, 0x2

    :try_start_0
    invoke-static {v5, v6, v11}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1142
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1143
    .local v7, latArr:[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    .line 1144
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v12, v7, v12

    aput-object v12, v0, v11

    .line 1148
    :try_start_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v10

    .line 1149
    .local v10, number:Ljava/lang/Number;
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x3f70624dd2f1a9fcL

    add-double v1, v11, v13

    .line 1150
    .local v1, d:D
    const/4 v11, 0x2

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1157
    .end local v1           #d:D
    .end local v10           #number:Ljava/lang/Number;
    :goto_0
    const/4 v12, 0x3

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    const-string v11, "N"

    :goto_1
    aput-object v11, v0, v12

    .line 1158
    invoke-virtual {v9, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v7           #latArr:[Ljava/lang/String;
    :goto_2
    return-object v11

    .line 1130
    :catch_0
    move-exception v4

    .line 1135
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1136
    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1137
    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1138
    const/4 v11, 0x3

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1139
    invoke-virtual {v9, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 1152
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #latArr:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1154
    .local v4, e:Ljava/text/ParseException;
    const-string v11, "LocationPickerManager"

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1157
    .end local v4           #e:Ljava/text/ParseException;
    :cond_0
    const-string v11, "S"

    goto :goto_1
.end method

.method public formatedLon(I)Ljava/lang/String;
    .locals 15
    .parameter "lonE6"

    .prologue
    .line 1169
    invoke-static/range {p1 .. p1}, Lcom/htc/android/locationpicker/LocationPickerManager;->geoInt2Double(I)D

    move-result-wide v5

    .line 1171
    .local v5, lon:D
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v11, "00.00"

    invoke-direct {v3, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v3, decFormatter:Ljava/text/DecimalFormat;
    new-instance v9, Ljava/text/MessageFormat;

    const-string v11, "{0}\u00b0 {1}\'\' {2}\" {3}"

    invoke-direct {v9, v11}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v9, mformat:Ljava/text/MessageFormat;
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    .line 1174
    .local v0, argLon:[Ljava/lang/String;
    const-string v8, ""

    .line 1178
    .local v8, lonStr:Ljava/lang/String;
    const/4 v11, 0x2

    :try_start_0
    invoke-static {v5, v6, v11}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1191
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1192
    .local v7, lonArr:[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    .line 1193
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v12, v7, v12

    aput-object v12, v0, v11

    .line 1197
    :try_start_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v10

    .line 1198
    .local v10, number:Ljava/lang/Number;
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x3f70624dd2f1a9fcL

    add-double v1, v11, v13

    .line 1199
    .local v1, d:D
    const/4 v11, 0x2

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1205
    .end local v1           #d:D
    .end local v10           #number:Ljava/lang/Number;
    :goto_0
    const/4 v12, 0x3

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    const-string v11, "E"

    :goto_1
    aput-object v11, v0, v12

    .line 1207
    invoke-virtual {v9, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v7           #lonArr:[Ljava/lang/String;
    :goto_2
    return-object v11

    .line 1180
    :catch_0
    move-exception v4

    .line 1184
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1185
    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1186
    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1187
    const/4 v11, 0x3

    const-string v12, "0"

    aput-object v12, v0, v11

    .line 1188
    invoke-virtual {v9, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 1201
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #lonArr:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1203
    .local v4, e:Ljava/text/ParseException;
    const-string v11, "LocationPickerManager"

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1205
    .end local v4           #e:Ljava/text/ParseException;
    :cond_0
    const-string v11, "W"

    goto :goto_1
.end method

.method public getIntentData()Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide v7, 0x40efffe000000000L

    .line 765
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 766
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 767
    .local v2, intent_action:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->INVALID_ACTION:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 769
    .local v3, resultAction:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 771
    :cond_0
    if-eqz v2, :cond_1

    .line 773
    const-string v4, "LocationPickerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v4, "com.htc.laputa.map.action.SHOW_LOCATION_MGR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 776
    const-string v4, "LOCATION_PICKER_MGR_BUNDLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 778
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 780
    const-string v4, "Longitude"

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    .line 781
    const-string v4, "Latitude"

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    .line 782
    const-string v4, "Mode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    .line 783
    const-string v4, "ReverseGeo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    .line 784
    const-string v4, "UpdateMyLocation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bUpdateMyLoc:Z

    .line 789
    const-string v4, "LocationPickerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_bUpdateMyLoc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bUpdateMyLoc:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v3, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->SHOW_LOC_PICKER_MGR:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 846
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object v3

    .line 794
    :cond_2
    const-string v4, "com.htc.laputa.map.action.REVERSE_ADDR_ON_MAP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 796
    const-string v4, "REVERSE_ADDR_ON_MAP_BUNDLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 798
    .restart local v0       #bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 800
    const-string v4, "Address"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;

    .line 801
    const-string v4, "PhotoImage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_PhotoImagePath:Ljava/lang/String;

    .line 802
    const-string v4, "Tel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_TelNum:Ljava/lang/String;

    .line 803
    const-string v4, "Name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_ContatctName:Ljava/lang/String;

    .line 810
    sget-object v3, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_ADDRESS_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    goto :goto_0

    .line 813
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v4, "com.htc.laputa.map.action.REVERSE_GEOCODE_ON_MAP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 816
    const-string v4, "REVERSE_GEOCODE_ON_MAP_BUNDLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 818
    .restart local v0       #bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 820
    const-string v4, "Longitude"

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    .line 821
    const-string v4, "Latitude"

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    .line 822
    const-string v4, "PhotoImage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_PhotoImagePath:Ljava/lang/String;

    .line 823
    const-string v4, "Tel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_TelNum:Ljava/lang/String;

    .line 831
    sget-object v3, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_GEOCODE_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    goto :goto_0

    .line 834
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    const-string v4, "com.htc.laputa.map.action.NAVI_PICK_DEST_FROM_MAP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 836
    iput-boolean v9, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bNeedLaunchNavi:Z

    .line 837
    iput-wide v7, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    .line 838
    iput-wide v7, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    .line 839
    iput-boolean v9, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bUpdateMyLoc:Z

    .line 840
    iput-boolean v9, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    .line 841
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    .line 842
    sget-object v3, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->NAVI_PICK_DEST_FROM_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    goto :goto_0
.end method

.method public isConnectionEstablished()Z
    .locals 5

    .prologue
    .line 888
    const/4 v0, 0x1

    .line 890
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationPickerManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    .line 892
    .local v1, wirelessEnabled:Z
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 894
    :cond_0
    const-string v2, "LocationPickerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnectionEstablished: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return v0
.end method

.method public notifyComplete(II)V
    .locals 4
    .parameter "errCode"
    .parameter "taskId"

    .prologue
    const/4 v3, 0x1

    .line 1014
    const-string v0, "LocationPickerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyComplete errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentTaskId:I

    if-ne v0, p2, :cond_1

    .line 1018
    if-nez p1, :cond_0

    .line 1020
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsReverseGeoCanceled:Z

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->getRet()Lcom/htc/laputa/engine/util/AddressInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    .line 1027
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    if-eqz v0, :cond_3

    .line 1050
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bNeedLaunchNavi:Z

    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->startNaviActivity()V

    .line 1057
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsCalledPicker:Z

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsPickerReturnedResult:Z

    if-ne v0, v3, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->addRecentForPickLocation()V

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1063
    return-void

    .line 1041
    :cond_3
    const-string v0, "LocationPickerManager"

    const-string v1, "notify success but no object, may in on-line map mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 488
    iput-boolean v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsPickerReturnedResult:Z

    .line 490
    const/16 v1, 0x2f3

    if-ne p1, v1, :cond_3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 492
    const-string v1, "LocationPickerManager"

    const-string v2, "++ #@@onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iput p2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_resultCode:I

    .line 495
    const-string v1, "MAP_PICKER_RET_BUNDLE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 496
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 498
    const-string v1, "MAP_PICKER_RET_LONGITUDE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    .line 499
    const-string v1, "MAP_PICKER_RET_LATITUDE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    .line 500
    const-string v1, "MAP_PICKER_RET_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddress:Ljava/lang/String;

    .line 501
    const-string v1, "MAP_PICKER_RET_POI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bundlePOI:Landroid/os/Bundle;

    .line 507
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bNeedLaunchNavi:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    :cond_1
    iput-boolean v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bReturnedResultFromPicker:Z

    .line 510
    const-string v1, "LocationPickerManager"

    const-string v2, "doReverseGeoCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->doReverseGeoCode()V

    .line 512
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 515
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_2
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->cancelReverseGeoCode()V

    .line 1078
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    .line 1079
    return-void
.end method

.method public onConnected()V
    .locals 4

    .prologue
    .line 1066
    const-string v0, "LocationPickerManager"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1068
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getIntentData()Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    move-result-object v0

    .line 254
    .local v0, resultAction:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->SHOW_LOC_PICKER_MGR:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->doMgrServiceAction()V

    .line 275
    :goto_0
    return-void

    .line 258
    :cond_0
    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_ADDRESS_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    if-ne v0, v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->doReverseAddrOnMapAction()V

    goto :goto_0

    .line 262
    :cond_1
    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_GEOCODE_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    if-ne v0, v1, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->doshowReverseGeocodeOnMapAction()V

    goto :goto_0

    .line 266
    :cond_2
    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->NAVI_PICK_DEST_FROM_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    if-ne v0, v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_uiHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 272
    :cond_3
    const-string v1, "LocationPickerManager"

    const-string v2, "intent data is in valid, exit activity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 279
    const-string v0, "LocationPickerManager"

    const-string v1, "++ #@@show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->setTheme(I)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsDialogShowing:Z

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 304
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 286
    :pswitch_0
    const-string v0, "LocationPickerManager"

    const-string v1, "SHOW_REVERSE_GEOCODE_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showReverseGeoCodeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_1
    const-string v0, "LocationPickerManager"

    const-string v1, "SHOW_LOCATION_LIST_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showLocationListDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_2
    const-string v0, "LocationPickerManager"

    const-string v1, "SHOW_ERROR_DIALOG_FOR_SHOW_MAP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showErrorDialogForShowMap()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_3
    const-string v0, "LocationPickerManager"

    const-string v1, "SHOW_WIFI_DISABLED_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showWifiDisabledDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_4
    const-string v0, "LocationPickerManager"

    const-string v1, "SHOW_REVERSE_ADDRESS_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showReverseAddressDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "LocationPickerManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->bIsDestroyStage:Z

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsDialogShowing:Z

    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 444
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 1071
    const-string v0, "LocationPickerManager"

    const-string v1, "Service dis-connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 449
    const-string v0, "LocationPickerManager"

    const-string v1, "++ #@@onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->stopBindEngineService()V

    .line 451
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsDialogShowing:Z

    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 453
    const-string v0, "LocationPickerManager"

    const-string v1, "-- #@@onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 471
    const-string v0, "LocationPickerManager"

    const-string v1, "++ #@@onRestart "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 474
    const-string v0, "LocationPickerManager"

    const-string v1, "-- #@@onRestart "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 457
    const-string v0, "LocationPickerManager"

    const-string v1, "++ #@@onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->startBindEngineService()V

    .line 459
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 461
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsCalledPicker:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsPickerReturnedResult:Z

    if-nez v0, :cond_0

    .line 463
    const-string v0, "LocationPickerManager"

    const-string v1, "LAPUTA_MAY_CRASH: map picker crashed in uncertain way"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    .line 466
    :cond_0
    const-string v0, "LocationPickerManager"

    const-string v1, "-- #@@onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "LocationPickerManager"

    const-string v1, "++ #@@onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 482
    const-string v0, "LocationPickerManager"

    const-string v1, "-- #@@onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method public returnFinalResult()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 688
    const-string v2, "LocationPickerManager"

    const-string v3, "++ #@@returnFinalResult "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-boolean v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bNeedLaunchNavi:Z

    if-nez v2, :cond_5

    .line 692
    monitor-enter p0

    .line 694
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 695
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Return_Latitude"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 697
    const-string v2, "Return_Longitude"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 699
    iget-boolean v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/AddressInfo;->getFullAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 702
    iget v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsReverseGeoCanceled:Z

    if-nez v2, :cond_0

    .line 705
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_resultCode:I

    .line 716
    :cond_0
    const-string v2, "Return_Full_Address"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getFullAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v2, "Return_Country"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v2, "Return_State"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v2, "Return_County"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getCounty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v2, "Return_City"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v2, "Return_Street"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v2, "Return_Houseno"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v3}, Lcom/htc/laputa/engine/util/AddressInfo;->getHouseNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_0
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 736
    const-string v2, "Return_Full_Address"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_1
    invoke-static {}, Lcom/htc/android/locationpicker/LocationPickerManager;->isChinaProjectRomBuild()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 742
    const-string v2, "Google_Web_Link"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_1
    const-string v2, "LOCATION_PICKER_MGR_RET_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 749
    const-string v2, "LOCATION_PICKER_MGR_RET_POI_BUNDLE"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bundlePOI:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 751
    iget v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_resultCode:I

    invoke-virtual {p0, v2, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->setResult(ILandroid/content/Intent;)V

    .line 752
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 753
    const-string v2, "LocationPickerManager"

    const-string v3, "-- #@@returnFinalResult "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    monitor-exit p0

    .line 761
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 727
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    iget v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    if-nez v2, :cond_3

    .line 730
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_resultCode:I

    .line 732
    :cond_3
    const-string v2, "Return_Full_Address"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 746
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    const-string v2, "Google_Web_Link"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    iget-wide v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/locationpicker/LocationPickerManager;->getGMMLinkString(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 758
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    const-string v2, "LocationPickerManager"

    const-string v3, "no need return result due to execute Navi pick from map"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    goto :goto_2
.end method

.method public reverseAddrToGeoCode()V
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->isConnectionEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showDialog(I)V

    .line 906
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$11;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$11;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_reverseAddressThread:Ljava/lang/Thread;

    .line 931
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_reverseAddressThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 937
    :goto_0
    return-void

    .line 935
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationPickerManager;->showDialog(I)V

    goto :goto_0
.end method

.method public showReverseAddressDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 423
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@showReverseAddressDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 426
    new-instance v1, Lcom/htc/android/locationpicker/LocationPickerManager$10;

    invoke-direct {v1, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$10;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 433
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 434
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    return-object v0
.end method

.method public showWifiDisabledDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 7

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, laputaResource:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc.laputa"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 385
    :goto_0
    if-eqz v1, :cond_0

    .line 387
    const-string v4, "text_settings"

    const-string v5, "string"

    const-string v6, "com.htc.laputa"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 388
    .local v3, str_setting_id:I
    const-string v4, "text_cancel"

    const-string v5, "string"

    const-string v6, "com.htc.laputa"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 389
    .local v2, str_cancel_id:I
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c009e

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c009f

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/locationpicker/LocationPickerManager$9;

    invoke-direct {v6, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$9;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/locationpicker/LocationPickerManager$8;

    invoke-direct {v6, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$8;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/android/locationpicker/LocationPickerManager$7;

    invoke-direct {v5, p0}, Lcom/htc/android/locationpicker/LocationPickerManager$7;-><init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 418
    .end local v2           #str_cancel_id:I
    .end local v3           #str_setting_id:I
    :goto_1
    return-object v4

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public startBindEngineService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 995
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsNeedReverseGeoCode:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_currentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bReturnedResultFromPicker:Z

    if-ne v0, v2, :cond_1

    .line 999
    :cond_0
    const-string v0, "LocationPickerManager"

    const-string v1, "startBindEngineService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/EngineServiceBinder;->bindEngineService(Landroid/content/Context;)V

    .line 1001
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->setListener(Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;)V

    .line 1003
    :cond_1
    return-void
.end method

.method public startNaviActivity()V
    .locals 10

    .prologue
    const-wide v8, 0x412e848000000000L

    .line 642
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v2, intent_car:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 644
    .local v0, bundle_car:Landroid/os/Bundle;
    const-string v5, "latitude"

    iget-wide v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 645
    const-string v5, "longitude"

    iget-wide v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 647
    const-string v5, "root_category"

    const v6, 0xff04

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    if-eqz v5, :cond_2

    .line 651
    const-string v5, "name"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v5, "country"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v5, "state"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v5, "county"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getCounty()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v5, "city"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v5, "street"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v5, "house_number"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getHouseNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v5, "full_address"

    iget-object v6, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;

    invoke-virtual {v6}, Lcom/htc/laputa/engine/util/AddressInfo;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v1, ""

    .line 662
    .local v1, iconPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 663
    .local v3, laputaDataPath:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Data/htc/footprint_img_address_192.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 666
    const-string v5, "icon_path"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .end local v1           #iconPath:Ljava/lang/String;
    .end local v3           #laputaDataPath:Ljava/io/File;
    :cond_1
    :goto_0
    const-string v5, "HTC_NAVI_BUNDLE"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 681
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 684
    return-void

    .line 670
    :cond_2
    const-string v5, "LocationPickerManager"

    const-string v6, "start navi but no address info!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    iget-wide v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationPickerManager;->formatedLat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-wide v5, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationPickerManager;->formatedLon(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v5, "name"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPickerActivity()V
    .locals 5

    .prologue
    .line 565
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bIsCalledPicker:Z

    .line 566
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.map.action.SHOW_LOCATION_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "MAP_PICKER_LONGITUDE"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 569
    const-string v2, "MAP_PICKER_LATITUDE"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 570
    const-string v2, "UpdateMyLocation"

    iget-boolean v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_bUpdateMyLoc:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    const-string v2, "HTC_MAP_PICKER_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 572
    const/16 v2, 0x2f3

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 573
    return-void
.end method

.method public startReverseAddrOnMapActivity(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.laputa.map.action.SHOW_MAPVIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_addrLists:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 580
    .local v2, oneAddress:Landroid/location/Address;
    const-string v3, "MAP_VIEW_LONGITUDE"

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 581
    const-string v3, "MAP_VIEW_LATITUDE"

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 582
    const-string v3, "MAP_VIEW_FILTER_MODE"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    const-string v3, "longitude"

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 585
    const-string v3, "latitude"

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 586
    const-string v3, "icon_path"

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_PhotoImagePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v3, "root_category"

    const v4, 0xff04

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    const-string v3, "phone_number"

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_TelNum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v3, "country"

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v3, "state"

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v3, "city"

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v3, "county"

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v3, "street"

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v3, "house_number"

    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v3, "full_address"

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_locLists:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v3, "name"

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_ContatctName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v3, "HTC_MAP_VIEW_BUNDLE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 603
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 604
    return-void
.end method

.method public startShowMyLocationOnMapActivity()V
    .locals 4

    .prologue
    .line 630
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.map.action.SHOW_MAPVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 632
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "UpdateMyLocation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 633
    const-string v2, "MAP_VIEW_FILTER_MODE"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    const-string v2, "HTC_MAP_VIEW_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 636
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 637
    return-void
.end method

.method public startShowReverseGeoCodeOnMap()V
    .locals 5

    .prologue
    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.map.action.SHOW_MAPVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "MAP_VIEW_LONGITUDE"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 611
    const-string v2, "MAP_VIEW_LATITUDE"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 612
    const-string v2, "MAP_VIEW_FILTER_MODE"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    const-string v2, "longitude"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_longitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 615
    const-string v2, "latitude"

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_latitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 616
    const-string v2, "icon_path"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_PhotoImagePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v2, "root_category"

    const v3, 0xff04

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    const-string v2, "phone_number"

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_TelNum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 621
    :cond_0
    const-string v2, "full_address"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_1
    const-string v2, "HTC_MAP_VIEW_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->startActivity(Landroid/content/Intent;)V

    .line 625
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 626
    return-void
.end method

.method public stopBindEngineService()V
    .locals 2

    .prologue
    .line 1007
    const-string v0, "LocationPickerManager"

    const-string v1, "stopBindEngineService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->unbineEngineService()V

    .line 1009
    return-void
.end method
