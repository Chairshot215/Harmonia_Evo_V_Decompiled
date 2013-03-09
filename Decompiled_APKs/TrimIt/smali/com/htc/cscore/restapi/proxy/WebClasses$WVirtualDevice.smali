.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVirtualDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;,
        Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;
    }
.end annotation


# instance fields
.field public AlternateNumber:Ljava/lang/String;

.field public AreaCode:Ljava/lang/String;

.field public BindRequestId:Ljava/util/UUID;

.field public CallForwardPhoneNumber:Ljava/lang/String;

.field public CallForwardRegionId:Ljava/util/UUID;

.field public CallForwardingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public CountryCode:Ljava/lang/String;

.field public CurrentLocationLatitude:Ljava/lang/Double;

.field public CurrentLocationLongitude:Ljava/lang/Double;

.field public ForceRingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public HandsetDeviceId:Ljava/util/UUID;

.field public HandsetLocale:Ljava/lang/String;

.field public IDD:Ljava/lang/String;

.field public IsLocationTrackingEnabled:Z

.field public IsVerified:Z

.field public LastConnectedTimestamp:Ljava/util/Date;

.field public LastKnownLocation:Ljava/util/Date;

.field public LastSeenAtTimestamp:Ljava/util/Date;

.field public LastViewDashboards:Ljava/util/Date;

.field public LastViewFootprints:Ljava/util/Date;

.field public LastViewRecommends:Ljava/util/Date;

.field public LockHandsetMessage:Ljava/lang/String;

.field public LockHandsetPin:Ljava/lang/String;

.field public LockedHandsetState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public MessageForwardEmailAddress:Ljava/lang/String;

.field public MessageForwardPhoneNumber:Ljava/lang/String;

.field public MessageForwardPhoneRegionId:Ljava/util/UUID;

.field public MessageForwardStateEmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public MessageForwardStatePhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public MusicVendor:I

.field public NDD:Ljava/lang/String;

.field public NewVoicemailCount:I

.field public PhoneNumberString:Ljava/lang/String;

.field public PhysicalDeviceModel:Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;

.field public PhysicalDeviceModelId:Ljava/util/UUID;

.field public RecommendsAppCommentLastViewDate:Ljava/util/Date;

.field public RecommendsAppLastViewDate:Ljava/util/Date;

.field public RemoteDataWipeEraseSDState:Z

.field public RemoteDataWipeState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

.field public ResyncId:Ljava/util/UUID;

.field public ResyncState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

.field public ResyncStateDate:Ljava/util/Date;

.field public TimeOffsetFromUtc:J

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    return-void
.end method
