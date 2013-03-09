.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WAccount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountLoadOptions;,
        Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;,
        Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;
    }
.end annotation


# instance fields
.field public AccountGender:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

.field public AccountStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

.field public AuthTicket:Ljava/lang/String;

.field public CanFriendMatch:Z

.field public CanShareUsageInfo:Z

.field public CaptchaChallengeField:Ljava/lang/String;

.field public CaptchaResponseField:Ljava/lang/String;

.field public CreateTime:Ljava/util/Date;

.field public DateOfBirth:Ljava/util/Date;

.field public EmailAddress:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public IpAddress:Ljava/lang/String;

.field public IsVerified:Z

.field public LanguageCode:Ljava/lang/String;

.field public LastName:Ljava/lang/String;

.field public NewPassword:Ljava/lang/String;

.field public ProfileImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WProfileImage;

.field public Region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

.field public RegionId:Ljava/util/UUID;

.field public SecurityAnswer:Ljava/lang/String;

.field public SecurityQuestion:Ljava/lang/String;

.field public SendEmailAboutProducts:Z

.field public ShareFootprints:Z

.field public ShareRecommendations:Z

.field public TellHTCId:Ljava/lang/String;

.field public VerifyEmailId:Ljava/util/UUID;

.field public VirtualDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;",
            ">;"
        }
    .end annotation
.end field

.field public VirtualDevicesUpdated:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
