.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    }
.end annotation


# static fields
.field public static final FAMILYNAME_FIELD_NUMBER:I = 0x260

.field public static final FIRSTNAME_FIELD_NUMBER:I = 0x296

.field public static final GIVENNAME_FIELD_NUMBER:I = 0xf0

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final LASTNAME_FIELD_NUMBER:I = 0x294

.field public static final MIDDLENAME_FIELD_NUMBER:I = 0x40e

.field public static final MYPROFILEADDRESSESUPDATED_FIELD_NUMBER:I = 0x50b

.field public static final MYPROFILEADDRESSES_FIELD_NUMBER:I = 0x238

.field public static final MYPROFILEEMAILADDRESSESUPDATED_FIELD_NUMBER:I = 0x563

.field public static final MYPROFILEEMAILADDRESSES_FIELD_NUMBER:I = 0x2b

.field public static final MYPROFILEEVENTSUPDATED_FIELD_NUMBER:I = 0x636

.field public static final MYPROFILEEVENTS_FIELD_NUMBER:I = 0x7be

.field public static final MYPROFILEIMAGE_FIELD_NUMBER:I = 0x5f2

.field public static final MYPROFILEINSTANTMESSAGINGIDSUPDATED_FIELD_NUMBER:I = 0x11c

.field public static final MYPROFILEINSTANTMESSAGINGIDS_FIELD_NUMBER:I = 0x61

.field public static final MYPROFILENOTESUPDATED_FIELD_NUMBER:I = 0x39a

.field public static final MYPROFILENOTES_FIELD_NUMBER:I = 0x205

.field public static final MYPROFILEORGANIZATIONSUPDATED_FIELD_NUMBER:I = 0x18c

.field public static final MYPROFILEORGANIZATIONS_FIELD_NUMBER:I = 0x116

.field public static final MYPROFILEPHONENUMBERSUPDATED_FIELD_NUMBER:I = 0x4f7

.field public static final MYPROFILEPHONENUMBERS_FIELD_NUMBER:I = 0x5e3

.field public static final MYPROFILEWEBSITESUPDATED_FIELD_NUMBER:I = 0x777

.field public static final MYPROFILEWEBSITES_FIELD_NUMBER:I = 0x2f

.field public static final NAMESUFFIX_FIELD_NUMBER:I = 0x71b

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;


# instance fields
.field private familyName_:Ljava/lang/String;

.field private firstName_:Ljava/lang/String;

.field private givenName_:Ljava/lang/String;

.field private hasFamilyName:Z

.field private hasFirstName:Z

.field private hasGivenName:Z

.field private hasId:Z

.field private hasLastName:Z

.field private hasMiddleName:Z

.field private hasMyProfileAddressesUpdated:Z

.field private hasMyProfileEmailAddressesUpdated:Z

.field private hasMyProfileEventsUpdated:Z

.field private hasMyProfileImage:Z

.field private hasMyProfileInstantMessagingIDsUpdated:Z

.field private hasMyProfileNotesUpdated:Z

.field private hasMyProfileOrganizationsUpdated:Z

.field private hasMyProfilePhoneNumbersUpdated:Z

.field private hasMyProfileWebSitesUpdated:Z

.field private hasNameSuffix:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private lastName_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private middleName_:Ljava/lang/String;

.field private myProfileAddressesUpdated_:Z

.field private myProfileAddresses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;",
            ">;"
        }
    .end annotation
.end field

.field private myProfileEmailAddressesUpdated_:Z

.field private myProfileEmailAddresses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private myProfileEventsUpdated_:Z

.field private myProfileEvents_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;",
            ">;"
        }
    .end annotation
.end field

.field private myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

.field private myProfileInstantMessagingIDsUpdated_:Z

.field private myProfileInstantMessagingIDs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;",
            ">;"
        }
    .end annotation
.end field

.field private myProfileNotesUpdated_:Z

.field private myProfileNotes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;",
            ">;"
        }
    .end annotation
.end field

.field private myProfileOrganizationsUpdated_:Z

.field private myProfileOrganizations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;",
            ">;"
        }
    .end annotation
.end field

.field private myProfilePhoneNumbersUpdated_:Z

.field private myProfilePhoneNumbers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private myProfileWebSitesUpdated_:Z

.field private myProfileWebSites_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;",
            ">;"
        }
    .end annotation
.end field

.field private nameSuffix_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14454
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 16124
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 16128
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 16129
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14452
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 14476
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;

    .line 14483
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;

    .line 14490
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;

    .line 14497
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 14504
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;

    .line 14511
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;

    .line 14517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;

    .line 14530
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z

    .line 14536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;

    .line 14549
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z

    .line 14555
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;

    .line 14568
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z

    .line 14575
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 14581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;

    .line 14594
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z

    .line 14600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;

    .line 14613
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z

    .line 14619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;

    .line 14632
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z

    .line 14638
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;

    .line 14651
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z

    .line 14657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;

    .line 14670
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z

    .line 14677
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;

    .line 14684
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J

    .line 14810
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->memoizedSerializedSize:I

    .line 14452
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14449
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>()V

    return-void
.end method

.method static synthetic access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z

    return p1
.end method

.method static synthetic access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z

    return p1
.end method

.method static synthetic access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z

    return p1
.end method

.method static synthetic access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z

    return p1
.end method

.method static synthetic access$43400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z

    return p1
.end method

.method static synthetic access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z

    return p1
.end method

.method static synthetic access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z

    return p1
.end method

.method static synthetic access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z

    return p1
.end method

.method static synthetic access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z

    return p1
.end method

.method static synthetic access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z

    return p1
.end method

.method static synthetic access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z

    return p1
.end method

.method static synthetic access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z

    return p1
.end method

.method static synthetic access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z

    return p1
.end method

.method static synthetic access$44600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object v0
.end method

.method static synthetic access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object p1
.end method

.method static synthetic access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z

    return p1
.end method

.method static synthetic access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z

    return p1
.end method

.method static synthetic access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z

    return p1
.end method

.method static synthetic access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z

    return p1
.end method

.method static synthetic access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z

    return p1
.end method

.method static synthetic access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z

    return p1
.end method

.method static synthetic access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z

    return p1
.end method

.method static synthetic access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z

    return p1
.end method

.method static synthetic access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z

    return p1
.end method

.method static synthetic access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z

    return p1
.end method

.method static synthetic access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z

    return p1
.end method

.method static synthetic access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14449
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 14456
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14465
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$41400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    .prologue
    .line 14979
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 14982
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14957
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14963
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14924
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14930
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14969
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14975
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14946
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14952
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14935
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14941
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 14460
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 14499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14506
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;

    return-object v0
.end method

.method public getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 14524
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    return-object v0
.end method

.method public getMyProfileAddressesCount()I
    .locals 1

    .prologue
    .line 14522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14520
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileAddressesUpdated()Z
    .locals 1

    .prologue
    .line 14532
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z

    return v0
.end method

.method public getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 14543
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    return-object v0
.end method

.method public getMyProfileEmailAddressesCount()I
    .locals 1

    .prologue
    .line 14541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileEmailAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 14551
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z

    return v0
.end method

.method public getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 14562
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    return-object v0
.end method

.method public getMyProfileEventsCount()I
    .locals 1

    .prologue
    .line 14560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileEventsUpdated()Z
    .locals 1

    .prologue
    .line 14570
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z

    return v0
.end method

.method public getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 14577
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "index"

    .prologue
    .line 14588
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsCount()I
    .locals 1

    .prologue
    .line 14586
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileInstantMessagingIDsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14584
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    .prologue
    .line 14596
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z

    return v0
.end method

.method public getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "index"

    .prologue
    .line 14607
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    return-object v0
.end method

.method public getMyProfileNotesCount()I
    .locals 1

    .prologue
    .line 14605
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileNotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14603
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileNotesUpdated()Z
    .locals 1

    .prologue
    .line 14615
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z

    return v0
.end method

.method public getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "index"

    .prologue
    .line 14626
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    return-object v0
.end method

.method public getMyProfileOrganizationsCount()I
    .locals 1

    .prologue
    .line 14624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileOrganizationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileOrganizationsUpdated()Z
    .locals 1

    .prologue
    .line 14634
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z

    return v0
.end method

.method public getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 14645
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method

.method public getMyProfilePhoneNumbersCount()I
    .locals 1

    .prologue
    .line 14643
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfilePhoneNumbersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14641
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfilePhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 14653
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z

    return v0
.end method

.method public getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "index"

    .prologue
    .line 14664
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    return-object v0
.end method

.method public getMyProfileWebSitesCount()I
    .locals 1

    .prologue
    .line 14662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMyProfileWebSitesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14660
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;

    return-object v0
.end method

.method public getMyProfileWebSitesUpdated()Z
    .locals 1

    .prologue
    .line 14672
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z

    return v0
.end method

.method public getNameSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14679
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 14812
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->memoizedSerializedSize:I

    .line 14813
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 14918
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 14815
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 14816
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 14817
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    const/16 v4, 0x2b

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 14820
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 14821
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    const/16 v4, 0x2f

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 14824
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 14825
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    const/16 v4, 0x61

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    .line 14828
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14829
    const/16 v4, 0xf0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14832
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 14833
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    const/16 v4, 0x116

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 14836
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14837
    const/16 v4, 0x11c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14840
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 14841
    const/16 v4, 0x18c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14844
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 14845
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    const/16 v4, 0x205

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_5

    .line 14848
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 14849
    const/16 v4, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14852
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 14853
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    const/16 v4, 0x238

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_6

    .line 14856
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 14857
    const/16 v4, 0x260

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14860
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 14861
    const/16 v4, 0x294

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14864
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 14865
    const/16 v4, 0x296

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14868
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 14869
    const/16 v4, 0x39a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14872
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 14873
    const/16 v4, 0x40e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14876
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 14877
    const/16 v4, 0x4f7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14880
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 14881
    const/16 v4, 0x50b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14884
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 14885
    const/16 v4, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14888
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 14889
    const/16 v4, 0x563

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14892
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 14893
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    const/16 v4, 0x5e3

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_7

    .line 14896
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 14897
    const/16 v4, 0x5f2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14900
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 14901
    const/16 v4, 0x636

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14904
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 14905
    const/16 v4, 0x71b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14908
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 14909
    const/16 v4, 0x777

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14912
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 14913
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    const/16 v4, 0x7be

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_8

    .line 14916
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 14917
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->memoizedSerializedSize:I

    move v3, v2

    .line 14918
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 14686
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J

    return-wide v0
.end method

.method public hasFamilyName()Z
    .locals 1

    .prologue
    .line 14477
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 14484
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z

    return v0
.end method

.method public hasGivenName()Z
    .locals 1

    .prologue
    .line 14491
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 14498
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 14505
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z

    return v0
.end method

.method public hasMiddleName()Z
    .locals 1

    .prologue
    .line 14512
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z

    return v0
.end method

.method public hasMyProfileAddressesUpdated()Z
    .locals 1

    .prologue
    .line 14531
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z

    return v0
.end method

.method public hasMyProfileEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 14550
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z

    return v0
.end method

.method public hasMyProfileEventsUpdated()Z
    .locals 1

    .prologue
    .line 14569
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z

    return v0
.end method

.method public hasMyProfileImage()Z
    .locals 1

    .prologue
    .line 14576
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z

    return v0
.end method

.method public hasMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    .prologue
    .line 14595
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z

    return v0
.end method

.method public hasMyProfileNotesUpdated()Z
    .locals 1

    .prologue
    .line 14614
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z

    return v0
.end method

.method public hasMyProfileOrganizationsUpdated()Z
    .locals 1

    .prologue
    .line 14633
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z

    return v0
.end method

.method public hasMyProfilePhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 14652
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z

    return v0
.end method

.method public hasMyProfileWebSitesUpdated()Z
    .locals 1

    .prologue
    .line 14671
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z

    return v0
.end method

.method public hasNameSuffix()Z
    .locals 1

    .prologue
    .line 14678
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 14685
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14470
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$41500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 14689
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z

    if-nez v3, :cond_1

    .line 14727
    :cond_0
    :goto_0
    return v2

    .line 14690
    :cond_1
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z

    if-eqz v3, :cond_0

    .line 14691
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z

    if-eqz v3, :cond_0

    .line 14692
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z

    if-eqz v3, :cond_0

    .line 14693
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z

    if-eqz v3, :cond_0

    .line 14694
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z

    if-eqz v3, :cond_0

    .line 14695
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z

    if-eqz v3, :cond_0

    .line 14696
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z

    if-eqz v3, :cond_0

    .line 14697
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14698
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14700
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 14701
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 14703
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 14704
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 14706
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 14707
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 14709
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 14710
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14712
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 14713
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    .line 14715
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 14716
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    .line 14718
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 14719
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 14721
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 14722
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    .line 14724
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 14725
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    .line 14727
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    .prologue
    .line 14980
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    .prologue
    .line 14984
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14732
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 14733
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    const/16 v2, 0x2b

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 14735
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 14736
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    .line 14738
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 14739
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    const/16 v2, 0x61

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_2

    .line 14741
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14742
    const/16 v2, 0xf0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14744
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 14745
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    const/16 v2, 0x116

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_3

    .line 14747
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14748
    const/16 v2, 0x11c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14750
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14751
    const/16 v2, 0x18c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14753
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 14754
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    const/16 v2, 0x205

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_4

    .line 14756
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 14757
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14759
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 14760
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    const/16 v2, 0x238

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_5

    .line 14762
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 14763
    const/16 v2, 0x260

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14765
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 14766
    const/16 v2, 0x294

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14768
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 14769
    const/16 v2, 0x296

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14771
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 14772
    const/16 v2, 0x39a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14774
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 14775
    const/16 v2, 0x40e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14777
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 14778
    const/16 v2, 0x4f7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14780
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 14781
    const/16 v2, 0x50b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14783
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 14784
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 14786
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 14787
    const/16 v2, 0x563

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14789
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 14790
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    const/16 v2, 0x5e3

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_6

    .line 14792
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 14793
    const/16 v2, 0x5f2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 14795
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 14796
    const/16 v2, 0x636

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14798
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 14799
    const/16 v2, 0x71b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14801
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 14802
    const/16 v2, 0x777

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14804
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 14805
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    const/16 v2, 0x7be

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_7

    .line 14807
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 14808
    return-void
.end method
