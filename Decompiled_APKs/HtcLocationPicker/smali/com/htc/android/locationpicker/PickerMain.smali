.class public Lcom/htc/android/locationpicker/PickerMain;
.super Landroid/app/Activity;
.source "PickerMain.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/CmdListener;
.implements Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATION_PICKER:Ljava/lang/String; = "com.htc.locationpicker.HTC_LOCATION_PICKER"

.field private static final CANCEL_REVERSE_GEOCODE:I = 0x6e

.field private static final EXTRA_PICK_FOOTPRINT:Ljava/lang/String; = "pick_footprint"

.field private static final GEOCODER_FAILED_DIALOG:I = 0x4

.field private static final GPS_DISABLED_DIALOG:I = 0x5

.field private static final HANDLE_TO_DISMISS_WAIT_SEARCH_DIALOG:I = 0x0

.field private static final HANDLE_TO_SHOW_GEOCODER_FAILED_DIALOG:I = 0x1

.field private static final REQUEST_FOOTPRINTS:I = 0x1

.field private static final REQUEST_LOCATION_SETTINGS:I = 0x2

.field private static final REQUEST_MAP_PICKER:I = 0x0

.field private static final REQUEST_WIRELESS_SETTINGS_FOR_GEO:I = 0x3

.field private static final REQUEST_WIRELESS_SETTINGS_FOR_MAP:I = 0x4

.field private static final REVERSE_GEOCODE_TIMOUT:I = 0x2710

.field private static final SELECT_SOURCE_DIALOG_LAPUTA:I = 0x8

.field private static final SELECT_SOURCE_DIALOG_WITHOUT_GPS:I = 0x1

.field private static final SELECT_SOURCE_DIALOG_WITH_GPS:I = 0x0

.field private static final SHOW_REVERSE_GEOCODE_DIALOG:I = 0xb

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_SHOWING_FOOTPRINTS:I = 0x2

.field private static final STATE_SHOWING_GEOCODER_FAILED_DIALOG:I = 0xa

.field private static final STATE_SHOWING_GPS_DISABLED_DIALOG:I = 0xb

.field private static final STATE_SHOWING_LOCATION_SETTINGS:I = 0x3

.field private static final STATE_SHOWING_MAP_PICKER:I = 0x1

.field private static final STATE_SHOWING_SELECT_RETURN_TYPE_DIALOG:I = 0x8

.field private static final STATE_SHOWING_SELECT_SOURCE_DIALOG_WITHOUT_GPS:I = 0x7

.field private static final STATE_SHOWING_SELECT_SOURCE_DIALOG_WITH_GPS:I = 0x6

.field private static final STATE_SHOWING_WAIT_SEARCH_DIALOG:I = 0x9

.field private static final STATE_SHOWING_WIRELESS_DISABLED_DIALOG_FOR_GEO:I = 0xc

.field private static final STATE_SHOWING_WIRELESS_DISABLED_DIALOG_FOR_MAP:I = 0xd

.field private static final STATE_SHOWING_WIRELESS_SETTINGS_FOR_GEO:I = 0x4

.field private static final STATE_SHOWING_WIRELESS_SETTINGS_FOR_MAP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PickerMain"

.field private static final WAIT_SEARCH_DIALOG:I = 0x3

.field private static final WIRELESS_DISABLED_DIALOG_FOR_GEO:I = 0x6

.field private static final WIRELESS_DISABLED_DIALOG_FOR_MAP:I = 0x7


# instance fields
.field private mAgentListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

.field private mAlertConnectionFailed:Z

.field private mDebugMode:I

.field mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mFixed:Z

.field private mGPSSearchButton:Landroid/widget/Button;

.field mGeocoderFinishListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

.field private mHandler:Landroid/os/Handler;

.field private mInputHintText:Ljava/lang/String;

.field private mInputLatitude:D

.field private mInputLongitude:D

.field private mInputZoom:I

.field private mIsBindingEngine:Z

.field private mIsFootprintExist:Z

.field private mIsLaputaExist:Z

.field private mLocation:Landroid/location/Location;

.field private mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationSourceSelectMode:I

.field private mLogTrackingFlag:Z

.field private mPanelType:I

.field mPickerActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerIcon:Landroid/graphics/Bitmap;

.field private mReturnAddress:Ljava/lang/String;

.field private mReturnExtraData:Landroid/os/Bundle;

.field private mReturnExtraType:Ljava/lang/String;

.field private mReturnLatitude:D

.field private mReturnLongitude:D

.field private mReturnType:I

.field private mReturnTypeSelection:I

.field private mReturnZoom:I

.field private mSearchText:Ljava/lang/String;

.field private mShowedMenuItem:I

.field private mState:I

.field private mTaskIdReverseGeocode:I

.field private mUseHint:I

.field private mUseLocationFlag:I

.field private m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

.field private m_bIsReverseGeoCanceled:Z

.field private onClickCurrentLocationListener:Landroid/view/View$OnClickListener;

.field onClickFindOnMapListener:Landroid/view/View$OnClickListener;

.field onClickFootprintsListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    .line 93
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mSearchText:Ljava/lang/String;

    .line 94
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    .line 97
    iput v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mTaskIdReverseGeocode:I

    .line 98
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/PickerMain;->m_bIsReverseGeoCanceled:Z

    .line 99
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsBindingEngine:Z

    .line 104
    iput-wide v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    .line 105
    iput-wide v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    .line 107
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraType:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraData:Landroid/os/Bundle;

    .line 112
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationManager:Landroid/location/LocationManager;

    .line 113
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    .line 114
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    .line 115
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z

    .line 118
    iput v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 135
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z

    .line 141
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    .line 142
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    .line 1072
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$12;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$12;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->onClickCurrentLocationListener:Landroid/view/View$OnClickListener;

    .line 1098
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$13;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$13;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->onClickFootprintsListener:Landroid/view/View$OnClickListener;

    .line 1107
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$14;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$14;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->onClickFindOnMapListener:Landroid/view/View$OnClickListener;

    .line 1122
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$15;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$15;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1188
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$16;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$16;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mGeocoderFinishListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    .line 1205
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$17;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$17;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mAgentListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->doCancelReverseGeoCodeAndReturn()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/locationpicker/PickerMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startWirelessSettingsForMap()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/android/locationpicker/PickerMain;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/android/locationpicker/PickerMain;Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/PickerMain;->startForResultOfPickingMethod(Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/locationpicker/PickerMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/locationpicker/PickerMain;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/htc/android/locationpicker/PickerMain;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/htc/android/locationpicker/PickerMain;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/android/locationpicker/PickerMain;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->fillResultGoogle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->stopTracking()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/locationpicker/PickerMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/PickerMain;->doCancelSelectSourceDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->showSelectSourceDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/locationpicker/PickerMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/android/locationpicker/PickerMain;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/android/locationpicker/PickerMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/android/locationpicker/PickerMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/android/locationpicker/PickerMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLogTrackingFlag:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/android/locationpicker/PickerMain;)Lcom/htc/android/locationpicker/LocationAgent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/locationpicker/PickerMain;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/android/locationpicker/PickerMain;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/htc/android/locationpicker/PickerMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/android/locationpicker/PickerMain;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startFootprints()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startMapPicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/PickerMain;->doCancelGpsDisabledDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startLocationSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/PickerMain;->doCancelWirelessDisabledDialogForGeo(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/locationpicker/PickerMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startWirelessSettingsForGeo()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/locationpicker/PickerMain;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/PickerMain;->doCancelWirelessDisabledDialogForMap(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private cancelReverseGeoCode()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    if-eqz v0, :cond_0

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->m_bIsReverseGeoCanceled:Z

    .line 1370
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->cancel()V

    .line 1372
    :cond_0
    return-void
.end method

.method private checkMenuItemCanBeAdded(Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;)Z
    .locals 4
    .parameter "orderObject"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 794
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    const-string v3, "MyLocation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 803
    :cond_2
    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    const-string v3, "Search"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 807
    :cond_3
    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    const-string v3, "FindOnMap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 811
    :cond_4
    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    const-string v3, "NearBy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 815
    :cond_5
    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    const-string v3, "FootPrints"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 819
    :cond_6
    iget-object v2, p1, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mName:Ljava/lang/String;

    const-string v3, "History"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    :cond_7
    move v0, v1

    .line 824
    goto :goto_0
.end method

.method private clearHandleMessages()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1044
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1046
    :cond_0
    return-void
.end method

.method private doCancelGpsDisabledDialog(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1055
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1056
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 1057
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 1058
    return-void
.end method

.method private doCancelReverseGeoCodeAndReturn()V
    .locals 2

    .prologue
    .line 1358
    const-string v0, "PickerMain"

    const-string v1, "doCancelReverseGeoCodeAndReturn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->cancelReverseGeoCode()V

    .line 1360
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->fillResultLaputa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 1364
    return-void
.end method

.method private doCancelSelectSourceDialog(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1049
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1050
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1051
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 1052
    return-void
.end method

.method private doCancelWirelessDisabledDialogForGeo(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1061
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1062
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 1065
    return-void
.end method

.method private doCancelWirelessDisabledDialogForMap(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1068
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1069
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startMapPicker()V

    .line 1070
    return-void
.end method

.method private doReverseGeoCode()V
    .locals 6

    .prologue
    .line 1263
    const-string v1, "PickerMain"

    const-string v2, "++ #@@doReverseGeoCode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :try_start_0
    new-instance v1, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-direct {v1}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;-><init>()V

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    .line 1267
    const-string v1, "PickerMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWirelessEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->setOnline(Z)V

    .line 1273
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    iget-wide v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->setPosition(DD)V

    .line 1274
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {v1, p0}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mTaskIdReverseGeocode:I

    .line 1275
    const-string v1, "PickerMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTaskIdReverseGeocode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mTaskIdReverseGeocode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1279
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_bIsReverseGeoCanceled:Z
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    const-string v1, "PickerMain"

    const-string v2, "-- #@@doReverseGeoCode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0
.end method

.method private fillPickerMenuItemList(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, pickerMenuItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;>;"
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->getActivitiesOrderMap()Ljava/util/HashMap;

    move-result-object v0

    .line 758
    .local v0, activityOrderHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 790
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 765
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v4, "PickerMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activitiy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;

    .line 769
    .local v2, orderObject:Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;
    const/16 v4, 0xff

    iget v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    if-eq v4, v5, :cond_2

    .line 771
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/htc/android/locationpicker/PickerMain;->checkMenuItemCanBeAdded(Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 777
    :cond_2
    if-nez v2, :cond_3

    .line 779
    new-instance v4, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 783
    :cond_3
    new-instance v4, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, v2, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;->mOrder:I

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 786
    .end local v2           #orderObject:Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v4, "PickerMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickerMenuItems = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private fillResultGoogle()V
    .locals 8

    .prologue
    .line 978
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 980
    .local v0, intent:Landroid/content/Intent;
    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, returnLatitudeText:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, returnLongitudeText:Ljava/lang/String;
    const-string v4, "RETURN_LATITUDE"

    iget-wide v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 984
    const-string v4, "RETURN_LONGITUDE"

    iget-wide v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 985
    const-string v4, "RETURN_LATITUDE_TEXT"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v4, "RETURN_LONGITUDE_TEXT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v4, "RETURN_ZOOM"

    iget v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 988
    const-string v4, "RETURN_TYPE"

    iget v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 989
    const-string v5, "RETURN_ADDRESS"

    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    iget-wide v6, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/htc/android/locationpicker/PickerMain;->getGMMLinkString(DD)Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, url:Ljava/lang/String;
    const-string v4, "RETURN_URL"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const-string v4, "RETURN_STATUS"

    const-string v5, "OK"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1005
    return-void

    .line 989
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method private fillResultLaputa()Z
    .locals 8

    .prologue
    .line 1014
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1015
    .local v0, intent:Landroid/content/Intent;
    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, returnLatitudeText:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, returnLongitudeText:Ljava/lang/String;
    const-string v4, "RETURN_LATITUDE"

    iget-wide v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1019
    const-string v4, "RETURN_LONGITUDE"

    iget-wide v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1020
    const-string v4, "RETURN_LATITUDE_TEXT"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const-string v4, "RETURN_LONGITUDE_TEXT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string v4, "RETURN_ZOOM"

    iget v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const-string v4, "RETURN_TYPE"

    iget v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    const-string v4, "RETURN_ADDRESS"

    iget-object v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    iget-wide v6, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/htc/android/locationpicker/PickerMain;->getGMMLinkString(DD)Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, url:Ljava/lang/String;
    const-string v4, "RETURN_URL"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1031
    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1032
    const-string v4, "RETURN_EXTRA_DATA"

    iget-object v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1036
    :cond_0
    const-string v4, "RETURN_STATUS"

    const-string v5, "OK"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1038
    const/4 v4, 0x1

    return v4
.end method

.method private getActivitiesOrderMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 829
    .local v3, res:Landroid/content/res/Resources;
    const/high16 v5, 0x7f07

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, activities:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 831
    .local v1, activityOrderHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 832
    const-string v5, "PickerMain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    aget-object v5, v0, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, stringArray:[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 831
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v4, v5

    new-instance v6, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-direct {v6, p0, v2, v7}, Lcom/htc/android/locationpicker/PickerMain$ActivityOrderItem;-><init>(Lcom/htc/android/locationpicker/PickerMain;ILjava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 838
    .end local v4           #stringArray:[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getGMMLinkString(DD)Ljava/lang/String;
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1404
    invoke-static {}, Lcom/htc/android/locationpicker/LocationPickerManager;->isChinaProjectRomBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/maps?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getPickingActivities()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.locationpicker.HTC_LOCATION_PICKER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v0, pickerIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    .line 232
    return-void
.end method

.method private handleActivityResultGoogle(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 383
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_8

    .line 385
    :cond_0
    iput-object v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    .line 386
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 387
    const-string v0, "PickerMain"

    const-string v1, "onActivityResult: RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v0, "RETURN_LATITUDE"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    .line 390
    const-string v0, "RETURN_LONGITUDE"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    .line 391
    const-string v0, "RETURN_ZOOM"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    .line 392
    const-string v0, "RETURN_ADDRESS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    .line 399
    const-string v0, "PickerMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleActivityResultGoogle : mReturnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    .line 405
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->fillResultGoogle()V

    .line 407
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    invoke-static {p0}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    iget-wide v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    iget-object v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mGeocoderFinishListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/locationpicker/PickerUtils;->getAddressFromNetwork(DDLcom/htc/android/locationpicker/PickerUtils$SearchListener;)V

    .line 411
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 412
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 414
    :cond_3
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 415
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 420
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->fillResultGoogle()V

    .line 421
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_0

    .line 424
    :cond_5
    const-string v0, "PickerMain"

    const-string v1, "onActivityResult: RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationSourceSelectMode:I

    if-ne v0, v3, :cond_6

    .line 427
    invoke-virtual {p0, v6, v2}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_0

    .line 430
    :cond_6
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    if-eqz v0, :cond_7

    .line 431
    invoke-virtual {p0, v6, v2}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 432
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_0

    .line 435
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->showSelectSourceDialog()V

    goto :goto_0

    .line 440
    :cond_8
    if-ne p1, v7, :cond_9

    .line 441
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->showSelectSourceDialog()V

    goto :goto_0

    .line 442
    :cond_9
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 443
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startMapPicker()V

    goto :goto_0
.end method

.method private handleActivityResultLaputa(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 452
    if-nez p1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 453
    if-eqz p3, :cond_2

    .line 454
    const-string v1, "HTC_LOCATION_PICKER_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 455
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "LATITUDE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    .line 456
    const-string v1, "LONGITUDE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    .line 457
    const-string v1, "RETURN_ZOOM"

    const/4 v2, 0x2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    .line 458
    const-string v1, "ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    .line 459
    const-string v1, "EXTRA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraType:Ljava/lang/String;

    .line 460
    const-string v1, "EXTRA_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnExtraData:Landroid/os/Bundle;

    .line 471
    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 473
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 475
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->scheduleReverseGeoCode()V

    .line 487
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 478
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->fillResultLaputa()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    invoke-virtual {p0, v3, v4}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 485
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 486
    const-string v1, "PickerMain"

    const-string v2, "onActivityResult finish, mIsLaputaExist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private handleLaputaMenuDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 665
    const-string v4, "PickerMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPickerActivitiesList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_0
    return-object v1

    .line 667
    :cond_0
    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 668
    const-string v4, "PickerMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPickerActivitiesList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerActivitiesList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v3, pickerMenuItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;>;"
    invoke-direct {p0, v3}, Lcom/htc/android/locationpicker/PickerMain;->fillPickerMenuItemList(Ljava/util/ArrayList;)V

    .line 676
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 678
    const-string v4, "PickerMain"

    const-string v5, "only one menu item, just launch the picking method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;

    invoke-direct {p0, v4}, Lcom/htc/android/locationpicker/PickerMain;->startForResultOfPickingMethod(Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)V

    goto :goto_0

    .line 683
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f060001

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 685
    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 698
    new-instance v2, Lcom/htc/android/locationpicker/IconListAdapterEx;

    invoke-direct {v2, p0, v3}, Lcom/htc/android/locationpicker/IconListAdapterEx;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 699
    .local v2, listAdapter:Lcom/htc/android/locationpicker/IconListAdapterEx;
    new-instance v4, Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;

    invoke-direct {v4, p0, v3}, Lcom/htc/android/locationpicker/PickerMain$1MenuItemClickedListener;-><init>(Lcom/htc/android/locationpicker/PickerMain;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 700
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 701
    .local v1, createdDialog:Landroid/app/Dialog;
    if-nez v1, :cond_3

    .line 703
    const-string v4, "PickerMain"

    const-string v5, "Create Menu dialog failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 706
    :cond_3
    new-instance v4, Lcom/htc/android/locationpicker/PickerMain$11;

    invoke-direct {v4, p0}, Lcom/htc/android/locationpicker/PickerMain$11;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private isGpsEnabled()Z
    .locals 3

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 886
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/PickerMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationManager:Landroid/location/LocationManager;

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 891
    :cond_1
    return v0
.end method

.method private parseIntent()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const-wide/high16 v3, -0x4010

    .line 851
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 853
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PickerMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationSourceSelectMode:I

    .line 854
    const-string v1, "PickerPanelStyle"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mPanelType:I

    .line 855
    const-string v1, "PickerIcon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerIcon:Landroid/graphics/Bitmap;

    .line 857
    const-string v1, "InputLocation"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mUseLocationFlag:I

    .line 858
    const-string v1, "PickerLatitude"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLatitude:D

    .line 859
    const-string v1, "PickerLongitude"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLongitude:D

    .line 860
    const-string v1, "PickerZoom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputZoom:I

    .line 862
    const-string v1, "PickerDebugMode"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mDebugMode:I

    .line 863
    const-string v1, "PickerHintFlag"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mUseHint:I

    .line 864
    const-string v1, "PickerHintMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputHintText:Ljava/lang/String;

    .line 866
    const-string v1, "PickerReturnType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    .line 868
    const-string v1, "PickerAlertConnectionFailed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mAlertConnectionFailed:Z

    .line 870
    const-string v1, "SEARCH_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mSearchText:Ljava/lang/String;

    .line 872
    const-string v1, "ShowMenuItems"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    .line 874
    const-string v1, "PickerMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUseLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mUseLocationFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v1, "PickerMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReturnTypeSelection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnTypeSelection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v1, "PickerMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReturnType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-void
.end method

.method private scheduleReverseGeoCode()V
    .locals 4

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1353
    const-string v0, "PickerMain"

    const-string v1, "call startBindEngineService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->startBindEngineService()V

    .line 1355
    return-void
.end method

.method private showReverseGeoCodeDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1290
    const-string v1, "PickerMain"

    const-string v2, "-- #@@show dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1292
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1293
    invoke-virtual {v0, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 1295
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1297
    new-instance v1, Lcom/htc/android/locationpicker/PickerMain$18;

    invoke-direct {v1, p0}, Lcom/htc/android/locationpicker/PickerMain$18;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1303
    return-object v0
.end method

.method private showSelectSourceDialog()V
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 974
    :goto_0
    return-void

    .line 971
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 972
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0
.end method

.method private startFootprints()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 910
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.footprints.ListModeActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, footprintsIntent:Landroid/content/Intent;
    const-string v2, "pick_footprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 913
    const/4 v2, 0x2

    :try_start_0
    iput v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 914
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/locationpicker/PickerMain;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "PickerMain"

    const-string v3, "Footprints activity not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->showSelectSourceDialog()V

    goto :goto_0
.end method

.method private startForResultOfPickingMethod(Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const-wide/high16 v6, -0x4010

    .line 721
    const-string v3, "PickerMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityInfo.packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v3, "PickerMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityInfo.name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.locationpicker.HTC_LOCATION_PICKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/android/locationpicker/IconListAdapterEx$IconListItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mSearchText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 730
    const-string v3, "SEARCH_TEXT"

    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_0
    iget-wide v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLatitude:D

    cmpl-double v3, v3, v6

    if-eqz v3, :cond_1

    .line 735
    const-string v3, "LATITUDE"

    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLatitude:D

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 738
    :cond_1
    iget-wide v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLongitude:D

    cmpl-double v3, v3, v6

    if-eqz v3, :cond_2

    .line 740
    const-string v3, "LONGITUDE"

    iget-wide v4, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLongitude:D

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 743
    :cond_2
    const-string v3, "HTC_LOCATION_PICKER_REQUEST"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 746
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/locationpicker/PickerMain;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v1

    .line 749
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "PickerMain"

    const-string v4, "Footprints activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLocationSettings()V
    .locals 2

    .prologue
    .line 947
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 948
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 950
    return-void
.end method

.method private startMapPicker()V
    .locals 4

    .prologue
    .line 922
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 924
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 925
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 927
    const-string v1, "PickerPanelStyle"

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mPanelType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 929
    const-string v1, "PickerIcon"

    iget-object v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mPickerIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 932
    :cond_0
    const-string v1, "InputLocation"

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mUseLocationFlag:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    const-string v1, "PickerLatitude"

    iget-wide v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLatitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 934
    const-string v1, "PickerLongitude"

    iget-wide v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputLongitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 935
    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputZoom:I

    if-lez v1, :cond_1

    .line 936
    const-string v1, "PickerZoom"

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputZoom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    :cond_1
    const-string v1, "PickerDebugMode"

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mDebugMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    const-string v1, "PickerHintFlag"

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mUseHint:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    const-string v1, "PickerHintMsg"

    iget-object v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mInputHintText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 944
    return-void
.end method

.method private startTracking()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    if-eqz v0, :cond_0

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z

    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    .line 898
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationAgent;->shutdownAgent()V

    .line 899
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationAgent;->enableMyLocation()V

    .line 901
    :cond_0
    return-void
.end method

.method private startWirelessSettingsForGeo()V
    .locals 2

    .prologue
    .line 953
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 954
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->startActivity(Landroid/content/Intent;)V

    .line 958
    return-void
.end method

.method private startWirelessSettingsForMap()V
    .locals 2

    .prologue
    .line 961
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 962
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/locationpicker/PickerMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 964
    return-void
.end method

.method private stopTracking()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationAgent;->shutdownAgent()V

    .line 907
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyComplete(II)V
    .locals 4
    .parameter "errCode"
    .parameter "taskId"

    .prologue
    .line 1315
    const-string v1, "PickerMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyComplete] errCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " taskId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    if-nez p1, :cond_2

    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mTaskIdReverseGeocode:I

    if-ne v1, p2, :cond_2

    .line 1318
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_bIsReverseGeoCanceled:Z

    if-nez v1, :cond_2

    .line 1319
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->m_Geocode2Addr:Lcom/htc/laputa/engine/util/Geocode2AddressCmd;

    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/Geocode2AddressCmd;->getRet()Lcom/htc/laputa/engine/util/AddressInfo;

    move-result-object v0

    .line 1323
    .local v0, addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;
    if-eqz v0, :cond_3

    .line 1338
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsBindingEngine:Z

    if-eqz v1, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->stopBindEngineService()V

    .line 1342
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->fillResultLaputa()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1343
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/locationpicker/PickerMain;->setResult(ILandroid/content/Intent;)V

    .line 1345
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    .line 1348
    .end local v0           #addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;
    :cond_2
    return-void

    .line 1335
    .restart local v0       #addressInfo:Lcom/htc/laputa/engine/util/AddressInfo;
    :cond_3
    const-string v1, "PickerMain"

    const-string v2, "notify success but no object, may in on-line map mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 373
    const-string v0, "PickerMain"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/locationpicker/PickerMain;->handleActivityResultLaputa(IILandroid/content/Intent;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/locationpicker/PickerMain;->handleActivityResultGoogle(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->doCancelReverseGeoCodeAndReturn()V

    .line 1310
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    .line 306
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    return-void

    .line 315
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/PickerMain;->removeDialog(I)V

    .line 316
    invoke-virtual {p0, v1}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnected()V
    .locals 2

    .prologue
    .line 1393
    const-string v0, "PickerMain"

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->doReverseGeoCode()V

    .line 1395
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 158
    const-string v0, "PickerMain"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/PickerMain;->requestWindowFeature(I)Z

    .line 162
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->setContentView(I)V

    .line 164
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->parseIntent()V

    .line 165
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isLaputaExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    .line 167
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    if-eqz v0, :cond_1

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->getPickingActivities()V

    .line 170
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 172
    :cond_0
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$1;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$1;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    .line 225
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isFootprintExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    .line 186
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->instance(Landroid/content/Context;)Lcom/htc/android/locationpicker/LocationAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    .line 187
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationAgent:Lcom/htc/android/locationpicker/LocationAgent;

    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mAgentListener:Lcom/htc/android/locationpicker/LocationAgent$AgentListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/LocationAgent;->setAgentListener(Lcom/htc/android/locationpicker/LocationAgent$AgentListener;)V

    .line 189
    if-nez p1, :cond_2

    .line 190
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocationSourceSelectMode:I

    if-ne v0, v2, :cond_4

    .line 191
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mAlertConnectionFailed:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    const/16 v0, 0xd

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 193
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    .line 211
    :cond_2
    :goto_1
    new-instance v0, Lcom/htc/android/locationpicker/PickerMain$2;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerMain$2;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 196
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startMapPicker()V

    goto :goto_1

    .line 198
    :cond_4
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mShowedMenuItem:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    if-eqz v0, :cond_5

    .line 199
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startFootprints()V

    goto :goto_1

    .line 201
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 202
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_1

    .line 205
    :cond_6
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 206
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    .line 491
    const/4 v2, 0x0

    .line 493
    .local v2, createdDialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 651
    :goto_0
    :pswitch_0
    if-nez v2, :cond_0

    .line 653
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_1
    move-object v8, v2

    .line 659
    :goto_2
    return-object v8

    .line 496
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 497
    .local v1, contentLayout:Landroid/widget/LinearLayout;
    const v8, 0x7f090002

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;

    .line 498
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->onClickCurrentLocationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 500
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 501
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mGPSSearchButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f040004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 503
    iget-boolean v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    if-eqz v8, :cond_1

    .line 504
    const v8, 0x7f090004

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 505
    .local v6, gpsSearchBtn:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 506
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->onClickFootprintsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    const v8, 0x7f090003

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 508
    .local v3, divider:Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    .end local v3           #divider:Landroid/widget/ImageView;
    .end local v6           #gpsSearchBtn:Landroid/widget/Button;
    :cond_1
    const v8, 0x7f090006

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 512
    .local v5, findOnMapBtn:Landroid/widget/Button;
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->onClickFindOnMapListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 520
    goto/16 :goto_0

    .line 523
    .end local v1           #contentLayout:Landroid/widget/LinearLayout;
    .end local v5           #findOnMapBtn:Landroid/widget/Button;
    :pswitch_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v7, iconList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;>;"
    iget-boolean v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsFootprintExist:Z

    if-eqz v8, :cond_2

    .line 525
    new-instance v8, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;

    const v9, 0x7f060004

    invoke-virtual {p0, v9}, Lcom/htc/android/locationpicker/PickerMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f020005

    invoke-direct {v8, v9, v10}, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_2
    new-instance v8, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;

    const v9, 0x7f060005

    invoke-virtual {p0, v9}, Lcom/htc/android/locationpicker/PickerMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f020004

    invoke-direct {v8, v9, v10}, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v0, Lcom/htc/android/locationpicker/IconListAdapter;

    invoke-direct {v0, p0, v7}, Lcom/htc/android/locationpicker/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 533
    .local v0, adapter:Lcom/htc/android/locationpicker/IconListAdapter;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/android/locationpicker/PickerMain$3;

    invoke-direct {v9, p0}, Lcom/htc/android/locationpicker/PickerMain$3;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 553
    goto/16 :goto_0

    .line 556
    .end local v0           #adapter:Lcom/htc/android/locationpicker/IconListAdapter;
    .end local v7           #iconList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;>;"
    :pswitch_3
    new-instance v2, Landroid/app/ProgressDialog;

    .end local v2           #createdDialog:Landroid/app/Dialog;
    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v2       #createdDialog:Landroid/app/Dialog;
    move-object v8, v2

    .line 557
    check-cast v8, Landroid/app/ProgressDialog;

    const v9, 0x7f060020

    invoke-virtual {p0, v9}, Lcom/htc/android/locationpicker/PickerMain;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v8, v2

    .line 558
    check-cast v8, Landroid/app/ProgressDialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 559
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 560
    iget-object v8, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 564
    :pswitch_4
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f060017

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f060018

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06000a

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$4;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$4;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 576
    goto/16 :goto_0

    .line 579
    :pswitch_5
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001b

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001c

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001d

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$6;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$6;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06000b

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$5;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$5;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 596
    goto/16 :goto_0

    .line 599
    :pswitch_6
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f060019

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001a

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001d

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$8;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$8;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06000b

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$7;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$7;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 619
    goto/16 :goto_0

    .line 622
    :pswitch_7
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f060019

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001a

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/locationpicker/PickerMain;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06001d

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$10;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$10;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f06000b

    new-instance v10, Lcom/htc/android/locationpicker/PickerMain$9;

    invoke-direct {v10, p0}, Lcom/htc/android/locationpicker/PickerMain$9;-><init>(Lcom/htc/android/locationpicker/PickerMain;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 639
    goto/16 :goto_0

    .line 643
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->handleLaputaMenuDialog()Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_2

    .line 646
    :pswitch_9
    const-string v8, "PickerMain"

    const-string v9, "SHOW_REVERSE_GEOCODE_DIALOG"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v8, "PickerMain"

    const-string v9, "++ #@@show dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->showReverseGeoCodeDialog()Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_2

    .line 654
    :catch_0
    move-exception v4

    .line 656
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "PickerMain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No corresponding dialog ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 292
    const-string v0, "PickerMain"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p0}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/PickerUtils;->stopTitleSearch()V

    .line 297
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->clearHandleMessages()V

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 303
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 1400
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 285
    const-string v0, "PickerMain"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 843
    if-nez p1, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->startTracking()V

    .line 848
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 350
    const-string v0, "PickerMain"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "PickerMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 355
    const-string v0, "STATE"

    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 356
    const-string v0, "FIXED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z

    .line 357
    const-string v0, "RETURN_LATITUDE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    .line 358
    const-string v0, "RETURN_LONGITUDE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    .line 359
    const-string v0, "RETURN_ZOOM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    .line 360
    const-string v0, "RETURN_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    .line 362
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    .line 364
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    iget-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 365
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    iget-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    const-string v0, "PickerMain"

    const-string v1, "onResume+++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "PickerMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    const-string v0, "PickerMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLaputaExist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsLaputaExist:Z

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    const-string v0, "PickerMain"

    const-string v1, "onResume---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 249
    :cond_1
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    if-ne v0, v5, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->stopTracking()V

    .line 252
    invoke-virtual {p0, v3}, Lcom/htc/android/locationpicker/PickerMain;->dismissDialog(I)V

    .line 253
    iput v6, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 254
    invoke-virtual {p0, v4}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    if-ne v0, v6, :cond_3

    .line 257
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerMain;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v4}, Lcom/htc/android/locationpicker/PickerMain;->dismissDialog(I)V

    .line 259
    iput v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 260
    invoke-virtual {p0, v3}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 262
    :cond_3
    iget v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->isWirelessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    invoke-static {p0}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    iget-wide v3, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    iget-object v5, p0, Lcom/htc/android/locationpicker/PickerMain;->mGeocoderFinishListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/locationpicker/PickerUtils;->getAddressFromNetwork(DDLcom/htc/android/locationpicker/PickerUtils$SearchListener;)V

    .line 266
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 267
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/PickerMain;->showDialog(I)V

    goto :goto_0

    .line 269
    :cond_4
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    .line 274
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 334
    const-string v0, "PickerMain"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v0, "PickerMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 339
    const-string v0, "STATE"

    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    const-string v0, "FIXED"

    iget-boolean v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mFixed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    const-string v0, "RETURN_LATITUDE"

    iget-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLatitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 342
    const-string v0, "RETURN_LONGITUDE"

    iget-wide v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnLongitude:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 343
    const-string v0, "RETURN_ZOOM"

    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnZoom:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v0, "RETURN_TYPE"

    iget v1, p0, Lcom/htc/android/locationpicker/PickerMain;->mReturnType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method public startBindEngineService()V
    .locals 2

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsBindingEngine:Z

    if-nez v0, :cond_0

    .line 1377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsBindingEngine:Z

    .line 1378
    const-string v0, "PickerMain"

    const-string v1, "startBindEngineService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/locationpicker/PickerMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/locationpicker/EngineServiceBinder;->bindEngineService(Landroid/content/Context;)V

    .line 1380
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->setListener(Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;)V

    .line 1382
    :cond_0
    return-void
.end method

.method public stopBindEngineService()V
    .locals 2

    .prologue
    .line 1386
    const-string v0, "PickerMain"

    const-string v1, "stopBindEngineService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-static {}, Lcom/htc/android/locationpicker/EngineServiceBinder;->getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->unbineEngineService()V

    .line 1388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerMain;->mIsBindingEngine:Z

    .line 1389
    return-void
.end method
