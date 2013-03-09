.class public Lcom/htc/android/locationpicker/LocationMapPicker;
.super Lcom/google/android/maps/MapActivity;
.source "LocationMapPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;,
        Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;,
        Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    }
.end annotation


# static fields
.field private static final DIALOG_LOCATION_SOURCE_DISABLED:I = 0x0

.field private static final DIALOG_WIRELESS_DISABLED:I = 0x1

.field private static final HANDLER_AFTER_FLING:I = 0x2

.field private static final HANDLER_AFTER_MAP_MOVING:I = 0x3

.field private static final HANDLER_UPDATE_ADDRESS:I = 0x4

.field private static final HANDLER_UPDATE_UI:I = 0x1

.field private static final MAX_FLING_DISTANCE:I = 0x320

.field private static final TAG:Ljava/lang/String; = "LocationMapPicker"


# instance fields
.field private ICON_MAP_MODE:I

.field private ICON_SCREEN_MODE:I

.field private final MENU_MYLOCATION:I

.field private bigIcon:Landroid/graphics/drawable/Drawable;

.field private isCreate:Z

.field private isEnableMyLocation:Z

.field private isFixByGps:Z

.field private isFixByNetwork:Z

.field private isMapFling:Z

.field private isMapMoving:Z

.field private mAddressBarLayout:Landroid/view/ViewGroup;

.field private mAddressString:Ljava/lang/String;

.field private mAddressView:Landroid/widget/TextView;

.field private mCurGeoPoint:Lcom/google/android/maps/GeoPoint;

.field private mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;

.field private mCurIconMode:I

.field private mCurIconScreenPoint:Landroid/graphics/Point;

.field private mCurScreenPoint:Landroid/graphics/Point;

.field private mCurrentHint:I

.field private mCurrentPanelType:I

.field private mDebugMode:I

.field private mDefAlign:I

.field private mDefLatitude:D

.field private mDefLongitude:D

.field private mDefZoom:I

.field private mDrawPostionOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;

.field mHandler:Landroid/os/Handler;

.field private mHintDlg:Landroid/view/ViewGroup;

.field private mHintMsg:Ljava/lang/String;

.field private mIconBigHeight:I

.field private mIconBigWidth:I

.field private mIconHeight:I

.field private mIconSmallHeight:I

.field private mIconSmallWidth:I

.field private mIntent:Landroid/content/Intent;

.field private mMapAgentOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

.field private mMapCtrl:Lcom/google/android/maps/MapController;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

.field private mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

.field private mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

.field private mReturnLatitude:D

.field private mReturnLocation:Landroid/location/Location;

.field private mReturnLongitude:D

.field private mReturnZoom:I

.field private mScreenWidth:I

.field private mStatusBarHeight:I

.field private mUseInputLocation:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field setCenterLocation:Ljava/lang/Runnable;

.field private smallIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/16 v3, 0x50

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    .line 69
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    .line 70
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    .line 72
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    .line 73
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    .line 74
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    .line 77
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mUseInputLocation:I

    .line 78
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentPanelType:I

    .line 79
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I

    .line 80
    const/16 v0, 0xd

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDebugMode:I

    .line 81
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintMsg:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->smallIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->bigIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-wide v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    .line 87
    iput-wide v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    .line 89
    const/16 v0, 0x51

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    .line 91
    iput v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconHeight:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallWidth:I

    .line 93
    iput v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallHeight:I

    .line 94
    const/16 v0, 0x96

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigWidth:I

    .line 95
    iput v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigHeight:I

    .line 98
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingTop:I

    .line 99
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I

    .line 100
    iput v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingLeft:I

    .line 101
    iput v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingRight:I

    .line 111
    iput v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_SCREEN_MODE:I

    .line 112
    iput v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_MAP_MODE:I

    .line 113
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_SCREEN_MODE:I

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconMode:I

    .line 114
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    .line 115
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    .line 116
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;

    .line 117
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;

    .line 119
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z

    .line 120
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByNetwork:Z

    .line 121
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z

    .line 122
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapMoving:Z

    .line 123
    iput-boolean v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isEnableMyLocation:Z

    .line 126
    iput v6, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->MENU_MYLOCATION:I

    .line 137
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDrawPostionOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;

    .line 138
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapAgentOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    .line 139
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    .line 145
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressView:Landroid/widget/TextView;

    .line 147
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;

    .line 148
    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;

    .line 730
    new-instance v0, Lcom/htc/android/locationpicker/LocationMapPicker$8;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$8;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHandler:Landroid/os/Handler;

    .line 767
    new-instance v0, Lcom/htc/android/locationpicker/LocationMapPicker$9;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$9;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->setCenterLocation:Ljava/lang/Runnable;

    .line 1021
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/locationpicker/LocationMapPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/MyLocationOverlayEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->init()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/locationpicker/LocationMapPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getAndUpdateAddress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/locationpicker/LocationMapPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapMoving:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapMoving:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->changeLocationToMapCenter()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->moveToMyLocation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/locationpicker/LocationMapPicker;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/android/locationpicker/LocationMapPicker;->showHintDialog(FF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_SCREEN_MODE:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/android/locationpicker/LocationMapPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/android/locationpicker/LocationMapPicker;->switchIconMode(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingLeft:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingRight:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/android/locationpicker/LocationMapPicker;Lcom/google/android/maps/MapView$LayoutParams;)Lcom/google/android/maps/MapView$LayoutParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/locationpicker/LocationMapPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByNetwork:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByNetwork:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->bigIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconHeight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->smallIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/android/locationpicker/LocationMapPicker;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/android/locationpicker/LocationMapPicker;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_MAP_MODE:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/android/locationpicker/LocationMapPicker;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/android/locationpicker/LocationMapPicker;->moveMark(FF)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDebugMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/locationpicker/LocationMapPicker;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/htc/android/locationpicker/LocationMapPicker;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/htc/android/locationpicker/LocationMapPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnZoom:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/locationpicker/LocationMapPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/android/locationpicker/LocationMapPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;

    return-object p1
.end method

.method private changeLocationToMapCenter()V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;

    .line 714
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    .line 716
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 717
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 718
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;

    .line 719
    return-void
.end method

.method private checkLocationSources()Z
    .locals 6

    .prologue
    .line 543
    const/4 v2, 0x1

    .line 545
    .local v2, result:Z
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 546
    .local v3, service:Landroid/location/LocationManager;
    const-string v5, "gps"

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 547
    .local v0, gpsEnabled:Z
    const-string v5, "network"

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 548
    .local v1, networkEnabled:Z
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/locationpicker/PickerUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    .line 550
    .local v4, wirelessEnabled:Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 551
    const/4 v2, 0x0

    .line 552
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->showDialog(I)V

    .line 558
    :cond_0
    :goto_0
    return v2

    .line 553
    :cond_1
    if-nez v4, :cond_0

    .line 554
    const/4 v2, 0x0

    .line 555
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/locationpicker/LocationMapPicker;->showDialog(I)V

    goto :goto_0
.end method

.method private getAndUpdateAddress()V
    .locals 6

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;

    .line 330
    invoke-static {p0}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D

    new-instance v5, Lcom/htc/android/locationpicker/LocationMapPicker$2;

    invoke-direct {v5, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$2;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/locationpicker/PickerUtils;->getAddressFromNetwork(DDLcom/htc/android/locationpicker/PickerUtils$SearchListener;)V

    .line 347
    return-void
.end method

.method private getResourceIDFromClass(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "className"
    .parameter "fieldName"

    .prologue
    .line 1108
    const/4 v0, 0x0

    .line 1111
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1117
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1118
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    .line 1133
    :goto_1
    return v2

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "LocationMapPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1120
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 1122
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "LocationMapPicker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_0
    :goto_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1123
    :catch_2
    move-exception v1

    .line 1125
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "LocationMapPicker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1126
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1128
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v2, "LocationMapPicker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1129
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v1

    .line 1131
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v2, "LocationMapPicker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDebugMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->useDebugInfo()V

    .line 311
    :cond_0
    const-string v0, "LocationMapPicker"

    const-string v1, "init start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapAgentOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    .line 314
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapAgentOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$MapAgentOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v0, Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    .line 317
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->initLocation()V

    .line 320
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->initBottomPanel()V

    .line 321
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->initMark()V

    .line 323
    const-string v0, "LocationMapPicker"

    const-string v1, "init end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private initBottomPanel()V
    .locals 4

    .prologue
    .line 505
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 506
    .local v1, okButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v2, Lcom/htc/android/locationpicker/LocationMapPicker$5;

    invoke-direct {v2, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$5;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentPanelType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 531
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 532
    .local v0, cancelButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v2, Lcom/htc/android/locationpicker/LocationMapPicker$6;

    invoke-direct {v2, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$6;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    .end local v0           #cancelButton:Lcom/htc/widget/HtcFooterButton;
    :cond_0
    return-void
.end method

.method private initLocation()V
    .locals 11

    .prologue
    const/4 v1, -0x2

    const/16 v5, 0x11

    const-wide v9, 0x412e848000000000L

    .line 351
    const/4 v6, 0x0

    .line 352
    .local v6, gp:Lcom/google/android/maps/GeoPoint;
    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mUseInputLocation:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 354
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/LocationManager;

    .line 356
    .local v8, locationMgr:Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v8, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 358
    .local v7, location:Landroid/location/Location;
    if-nez v7, :cond_0

    .line 359
    const-string v2, "network"

    invoke-virtual {v8, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 362
    :cond_0
    if-nez v7, :cond_2

    .line 364
    const-string v2, "LocationMapPicker"

    const-string v3, "initLocation, Map default location"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    .line 367
    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v9

    iput-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    .line 368
    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v9

    iput-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    .line 380
    :goto_0
    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    if-gtz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v2

    iput v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    .line 382
    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    if-le v2, v5, :cond_1

    iput v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    iget v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 385
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-virtual {v2}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->enableMyLocation()Z

    .line 402
    .end local v7           #location:Landroid/location/Location;
    .end local v8           #locationMgr:Landroid/location/LocationManager;
    :goto_1
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v6, v3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    .line 404
    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;

    .line 405
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    div-double/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 406
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    div-double/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 407
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    new-instance v3, Lcom/htc/android/locationpicker/LocationMapPicker$3;

    invoke-direct {v3, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$3;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->setClientListener(Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;)V

    .line 431
    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    iput-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D

    .line 432
    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    iput-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D

    .line 435
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mScreenWidth:I

    div-int/lit8 v3, v2, 0x2

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getBottom()I

    move-result v4

    const/16 v5, 0x51

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 437
    .local v0, zoomParam:Lcom/google/android/maps/MapView$LayoutParams;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoomControls()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    new-instance v2, Lcom/htc/android/locationpicker/LocationMapPicker$4;

    invoke-direct {v2, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$4;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->setClientListener(Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;)V

    .line 463
    return-void

    .line 372
    .end local v0           #zoomParam:Lcom/google/android/maps/MapView$LayoutParams;
    .restart local v7       #location:Landroid/location/Location;
    .restart local v8       #locationMgr:Landroid/location/LocationManager;
    :cond_2
    const-string v2, "LocationMapPicker"

    const-string v3, "initLocation, LastKnownLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    .line 375
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    .line 376
    new-instance v6, Lcom/google/android/maps/GeoPoint;

    .end local v6           #gp:Lcom/google/android/maps/GeoPoint;
    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    mul-double/2addr v2, v9

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    mul-double/2addr v3, v9

    double-to-int v3, v3

    invoke-direct {v6, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 377
    .restart local v6       #gp:Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v6}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    goto/16 :goto_0

    .line 390
    .end local v7           #location:Landroid/location/Location;
    .end local v8           #locationMgr:Landroid/location/LocationManager;
    :cond_3
    const-string v2, "LocationMapPicker"

    const-string v3, "initLocation, input location"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v6, Lcom/google/android/maps/GeoPoint;

    .end local v6           #gp:Lcom/google/android/maps/GeoPoint;
    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    mul-double/2addr v2, v9

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    mul-double/2addr v3, v9

    double-to-int v3, v3

    invoke-direct {v6, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 393
    .restart local v6       #gp:Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v6}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 395
    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    if-gtz v2, :cond_4

    .line 396
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v2

    iput v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    .line 397
    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    if-le v2, v5, :cond_4

    iput v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    .line 399
    :cond_4
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    iget v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    goto/16 :goto_1
.end method

.method private initMark()V
    .locals 14

    .prologue
    const-wide v12, 0x412e848000000000L

    const/4 v11, 0x0

    .line 466
    new-instance v3, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    invoke-direct {v3, p0, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    .line 467
    new-instance v6, Lcom/google/android/maps/GeoPoint;

    iget-wide v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    mul-double/2addr v3, v12

    double-to-int v3, v3

    iget-wide v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    mul-double/2addr v4, v12

    double-to-int v4, v4

    invoke-direct {v6, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 468
    .local v6, center:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    invoke-interface {v3, v6, v11}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 470
    .local v10, pt:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    invoke-interface {v3, v6, v11}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    .line 471
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v4, v10, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 473
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v4, v10, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 477
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallWidth:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallHeight:I

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    .line 480
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->smallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I

    .line 489
    iget v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 491
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    invoke-virtual {v8, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    .line 493
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 494
    .local v7, hintIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 495
    .local v2, hintHight:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 496
    .local v1, hintWidth:I
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v4, v10, Landroid/graphics/Point;->y:I

    const/16 v5, 0x51

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 498
    .local v0, param:Lcom/google/android/maps/MapView$LayoutParams;
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 499
    .local v9, msg:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintMsg:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :cond_0
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    .end local v0           #param:Lcom/google/android/maps/MapView$LayoutParams;
    .end local v1           #hintWidth:I
    .end local v2           #hintHight:I
    .end local v7           #hintIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #msg:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private moveMark(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 724
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigWidth:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigHeight:I

    float-to-int v3, p1

    float-to-int v4, p2

    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 726
    .local v0, param:Lcom/google/android/maps/MapView$LayoutParams;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    .line 727
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    return-void
.end method

.method private moveToMyLocation()V
    .locals 3

    .prologue
    .line 683
    const-string v1, "LocationMapPicker"

    const-string v2, "moveToMyLocation - , moveToMyLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 687
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 696
    .local v0, gp:Lcom/google/android/maps/GeoPoint;
    const-string v1, "LocationMapPicker"

    const-string v2, "moveToMyLocation - , moveToMyLocation 4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    if-eqz v0, :cond_0

    .line 700
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z

    if-nez v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 703
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->setCenterLocation:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const-string v1, "LocationMapPicker"

    const-string v2, "moveToMyLocation - is scrolling"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showHintDialog(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 648
    iget v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 650
    .local v6, hintIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 651
    .local v2, hintHight:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 653
    .local v1, hintWidth:I
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    float-to-int v3, p1

    float-to-int v4, p2

    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 655
    .local v0, param:Lcom/google/android/maps/MapView$LayoutParams;
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 656
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    .line 657
    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    .end local v0           #param:Lcom/google/android/maps/MapView$LayoutParams;
    .end local v1           #hintWidth:I
    .end local v2           #hintHight:I
    .end local v6           #hintIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private switchIconMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 662
    iput p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconMode:I

    .line 663
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    .line 665
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconMode:I

    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_SCREEN_MODE:I

    if-ne v0, v1, :cond_0

    .line 668
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallWidth:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallHeight:I

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    .line 670
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallWidth:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallHeight:I

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;

    iget v4, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    .line 678
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateFinalPosition()V
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 619
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 620
    .local v0, gp:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 621
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 623
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v4

    iput-wide v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D

    .line 624
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v4

    iput-wide v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D

    .line 625
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v1

    iput v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnZoom:I

    .line 632
    return-void
.end method

.method private useDebugInfo()V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDrawPostionOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;

    .line 643
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDrawPostionOverlay:Lcom/htc/android/locationpicker/LocationMapPicker$DrawPostionOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method


# virtual methods
.method getLayoutParams()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I

    .line 297
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallWidth:I

    .line 298
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallHeight:I

    .line 299
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigWidth:I

    .line 300
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigHeight:I

    .line 302
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingTop:I

    .line 303
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I

    .line 304
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingLeft:I

    .line 305
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingRight:I

    .line 306
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    .line 563
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 565
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 569
    .local v8, width:I
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 571
    .local v7, height:I
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    .line 573
    .local v6, cmd_bar_height:I
    div-int/lit8 v3, v8, 0x2

    .line 574
    .local v3, newWidth:I
    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I

    sub-int v2, v7, v2

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I

    sub-int v4, v1, v2

    .line 576
    .local v4, newheight:I
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 577
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 581
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    iget v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallWidth:I

    iget v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIconSmallHeight:I

    iget v5, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 582
    .local v0, param:Lcom/google/android/maps/MapView$LayoutParams;
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    .line 583
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    .end local v0           #param:Lcom/google/android/maps/MapView$LayoutParams;
    .end local v3           #newWidth:I
    .end local v4           #newheight:I
    .end local v6           #cmd_bar_height:I
    .end local v7           #height:I
    .end local v8           #width:I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 152
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0, v3}, Lcom/htc/android/locationpicker/LocationMapPicker;->requestWindowFeature(I)Z

    .line 155
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->parseIntent()V

    .line 157
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/MapView;

    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    .line 158
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 161
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressView:Landroid/widget/TextView;

    .line 162
    const v2, 0x7f09000d

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;

    .line 164
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 165
    .local v0, windowMgr:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mScreenWidth:I

    .line 167
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 168
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;

    .line 169
    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v1

    .line 170
    .local v1, zoomControl:Landroid/widget/ZoomButtonsController;
    new-instance v2, Lcom/htc/android/locationpicker/LocationMapPicker$1;

    invoke-direct {v2, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$1;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getLayoutParams()V

    .line 192
    iput-boolean v3, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isCreate:Z

    .line 195
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v2, 0x1080027

    const/4 v0, 0x0

    .line 589
    packed-switch p1, :pswitch_data_0

    .line 615
    :goto_0
    return-object v0

    .line 592
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 600
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06001d

    new-instance v3, Lcom/htc/android/locationpicker/LocationMapPicker$7;

    invoke-direct {v3, p0}, Lcom/htc/android/locationpicker/LocationMapPicker$7;-><init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000b

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 267
    .local v0, result:Z
    const/4 v1, 0x1

    const v2, 0x7f060010

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020009

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 268
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :pswitch_0
    const-string v0, "ANALYTIC_LocationPicker"

    const-string v1, "[LocationMapPicker]MENU_MYLOCATION: move to my location"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->checkLocationSources()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByNetwork:Z

    if-eqz v0, :cond_2

    .line 280
    :cond_0
    const-string v0, "LocationMapPicker"

    const-string v1, "MENU_MYLOCATION, moveToMyLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->moveToMyLocation()V

    .line 287
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_2
    const-string v0, "LocationMapPicker"

    const-string v1, "MENU_MYLOCATION, enableMyLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->enableMyLocation()Z

    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isEnableMyLocation:Z

    .line 221
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->disableMyLocation()V

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 225
    return-void
.end method

.method public onReady()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isEnableMyLocation:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->enableMyLocation()Z

    .line 203
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isCreate:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->isCreate:Z

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->onReady()V

    .line 210
    :cond_0
    return-void
.end method

.method parseIntent()V
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 228
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerPanelStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentPanelType:I

    .line 232
    iget v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentPanelType:I

    if-ne v0, v2, :cond_0

    .line 233
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->setContentView(I)V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->smallIcon:Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationMapPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->bigIcon:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerHintFlag"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I

    .line 250
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerHintMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mHintMsg:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerZoom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefZoom:I

    .line 252
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "InputLocation"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mUseInputLocation:I

    .line 253
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerLatitude"

    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLatitude:D

    .line 254
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerLongitude"

    iget-wide v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDefLongitude:D

    .line 255
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mIntent:Landroid/content/Intent;

    const-string v1, "PickerDebugMode"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker;->mDebugMode:I

    .line 256
    return-void

    .line 235
    :cond_0
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->setContentView(I)V

    goto :goto_0
.end method
