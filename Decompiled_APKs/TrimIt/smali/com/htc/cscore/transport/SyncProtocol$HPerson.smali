.class public final Lcom/htc/cscore/transport/SyncProtocol$HPerson;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonFriendStatusType;,
        Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    }
.end annotation


# static fields
.field public static final ACCOUNTTYPE_FIELD_NUMBER:I = 0x8f

.field public static final AGGREGATEDPERSONID_FIELD_NUMBER:I = 0x59d

.field public static final COMPANYNAME_FIELD_NUMBER:I = 0x48e

.field public static final FIRSTNAME_FIELD_NUMBER:I = 0x296

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final LASTNAME_FIELD_NUMBER:I = 0x294

.field public static final NOTES_FIELD_NUMBER:I = 0x58a

.field public static final PERSONADDRESSESUPDATED_FIELD_NUMBER:I = 0x740

.field public static final PERSONADDRESSES_FIELD_NUMBER:I = 0x560

.field public static final PERSONEMAILADDRESSESUPDATED_FIELD_NUMBER:I = 0x5ac

.field public static final PERSONEMAILADDRESSES_FIELD_NUMBER:I = 0x10f

.field public static final PERSONIMAGE_FIELD_NUMBER:I = 0x1cd

.field public static final PERSONPHONENUMBERSUPDATED_FIELD_NUMBER:I = 0x6fc

.field public static final PERSONPHONENUMBERS_FIELD_NUMBER:I = 0xda

.field public static final PERSONSETTINGSUPDATED_FIELD_NUMBER:I = 0x284

.field public static final PERSONSETTINGS_FIELD_NUMBER:I = 0x453

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final TITLE_FIELD_NUMBER:I = 0x47e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPerson;


# instance fields
.field private accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

.field private aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private companyName_:Ljava/lang/String;

.field private firstName_:Ljava/lang/String;

.field private hasAccountType:Z

.field private hasAggregatedPersonId:Z

.field private hasCompanyName:Z

.field private hasFirstName:Z

.field private hasId:Z

.field private hasLastName:Z

.field private hasNotes:Z

.field private hasPersonAddressesUpdated:Z

.field private hasPersonEmailAddressesUpdated:Z

.field private hasPersonImage:Z

.field private hasPersonPhoneNumbersUpdated:Z

.field private hasPersonSettingsUpdated:Z

.field private hasTimestamp:Z

.field private hasTitle:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private lastName_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private notes_:Ljava/lang/String;

.field private personAddressesUpdated_:Z

.field private personAddresses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;",
            ">;"
        }
    .end annotation
.end field

.field private personEmailAddressesUpdated_:Z

.field private personEmailAddresses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

.field private personPhoneNumbersUpdated_:Z

.field private personPhoneNumbers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private personSettingsUpdated_:Z

.field private personSettings_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:J

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25275
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    .line 26643
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 26647
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 26648
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25273
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 25439
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 25446
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 25453
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;

    .line 25460
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;

    .line 25467
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 25474
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;

    .line 25481
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;

    .line 25487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;

    .line 25500
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z

    .line 25506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;

    .line 25519
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z

    .line 25526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 25532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;

    .line 25545
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z

    .line 25551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;

    .line 25564
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z

    .line 25571
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J

    .line 25578
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;

    .line 25670
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->memoizedSerializedSize:I

    .line 25273
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25270
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;-><init>()V

    return-void
.end method

.method static synthetic access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$73402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType:Z

    return p1
.end method

.method static synthetic access$73502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    return-object p1
.end method

.method static synthetic access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z

    return p1
.end method

.method static synthetic access$73700(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$73802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName:Z

    return p1
.end method

.method static synthetic access$73902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$74002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName:Z

    return p1
.end method

.method static synthetic access$74102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z

    return p1
.end method

.method static synthetic access$74300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$74402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName:Z

    return p1
.end method

.method static synthetic access$74502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$74602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes:Z

    return p1
.end method

.method static synthetic access$74702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$74802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z

    return p1
.end method

.method static synthetic access$74902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z

    return p1
.end method

.method static synthetic access$75002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z

    return p1
.end method

.method static synthetic access$75102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z

    return p1
.end method

.method static synthetic access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z

    return p1
.end method

.method static synthetic access$75300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method static synthetic access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object p1
.end method

.method static synthetic access$75402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z

    return p1
.end method

.method static synthetic access$75502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z

    return p1
.end method

.method static synthetic access$75602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z

    return p1
.end method

.method static synthetic access$75702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z

    return p1
.end method

.method static synthetic access$75802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$75902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$76002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle:Z

    return p1
.end method

.method static synthetic access$76102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25270
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    .prologue
    .line 25277
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 25286
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$72500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    .prologue
    .line 25811
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72800()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 25814
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25789
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25795
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25756
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25762
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25801
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25807
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25778
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25784
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25767
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25773
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 1

    .prologue
    .line 25441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    return-object v0
.end method

.method public getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 25448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    .prologue
    .line 25281
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 25270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 25270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 25469
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25483
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 25494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    return-object v0
.end method

.method public getPersonAddressesCount()I
    .locals 1

    .prologue
    .line 25492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonAddressesUpdated()Z
    .locals 1

    .prologue
    .line 25502
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z

    return v0
.end method

.method public getPersonEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 25513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    return-object v0
.end method

.method public getPersonEmailAddressesCount()I
    .locals 1

    .prologue
    .line 25511
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonEmailAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 25521
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z

    return v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 25528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method public getPersonPhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 25539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    return-object v0
.end method

.method public getPersonPhoneNumbersCount()I
    .locals 1

    .prologue
    .line 25537
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonPhoneNumbersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonPhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 25547
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z

    return v0
.end method

.method public getPersonSettings(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "index"

    .prologue
    .line 25558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    return-object v0
.end method

.method public getPersonSettingsCount()I
    .locals 1

    .prologue
    .line 25556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonSettingsUpdated()Z
    .locals 1

    .prologue
    .line 25566
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 25672
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->memoizedSerializedSize:I

    .line 25673
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 25750
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 25675
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 25676
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25677
    const/16 v4, 0x8f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 25680
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 25681
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    const/16 v4, 0xda

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 25684
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 25685
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    const/16 v4, 0x10f

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 25688
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 25689
    const/16 v4, 0x1cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25692
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25693
    const/16 v4, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 25696
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25697
    const/16 v4, 0x284

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 25700
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25701
    const/16 v4, 0x294

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25704
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 25705
    const/16 v4, 0x296

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25708
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 25709
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    const/16 v4, 0x453

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    .line 25712
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 25713
    const/16 v4, 0x47e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25716
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 25717
    const/16 v4, 0x48e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25720
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 25721
    const/16 v4, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25724
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 25725
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    const/16 v4, 0x560

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 25728
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 25729
    const/16 v4, 0x58a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25732
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 25733
    const/16 v4, 0x59d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 25736
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 25737
    const/16 v4, 0x5ac

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 25740
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 25741
    const/16 v4, 0x6fc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 25744
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 25745
    const/16 v4, 0x740

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 25748
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 25749
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->memoizedSerializedSize:I

    move v3, v2

    .line 25750
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 25573
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25580
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 25440
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType:Z

    return v0
.end method

.method public hasAggregatedPersonId()Z
    .locals 1

    .prologue
    .line 25447
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z

    return v0
.end method

.method public hasCompanyName()Z
    .locals 1

    .prologue
    .line 25454
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName:Z

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 25461
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 25468
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 25475
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName:Z

    return v0
.end method

.method public hasNotes()Z
    .locals 1

    .prologue
    .line 25482
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes:Z

    return v0
.end method

.method public hasPersonAddressesUpdated()Z
    .locals 1

    .prologue
    .line 25501
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z

    return v0
.end method

.method public hasPersonEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 25520
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z

    return v0
.end method

.method public hasPersonImage()Z
    .locals 1

    .prologue
    .line 25527
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z

    return v0
.end method

.method public hasPersonPhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 25546
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z

    return v0
.end method

.method public hasPersonSettingsUpdated()Z
    .locals 1

    .prologue
    .line 25565
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 25572
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 25579
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 25291
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$72600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 25583
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z

    if-nez v3, :cond_1

    .line 25608
    :cond_0
    :goto_0
    return v2

    .line 25584
    :cond_1
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z

    if-eqz v3, :cond_0

    .line 25585
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z

    if-eqz v3, :cond_0

    .line 25586
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z

    if-eqz v3, :cond_0

    .line 25587
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25590
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25591
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25593
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 25594
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 25596
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 25597
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 25599
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 25600
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25602
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 25603
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    .line 25605
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 25606
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    .line 25608
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    .prologue
    .line 25812
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 25270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 25270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    .prologue
    .line 25816
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 25270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 25270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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
    .line 25613
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25614
    const/16 v2, 0x8f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25616
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 25617
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    const/16 v2, 0xda

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 25619
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 25620
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    const/16 v2, 0x10f

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    .line 25622
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25623
    const/16 v2, 0x1cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25625
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25626
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 25628
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25629
    const/16 v2, 0x284

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25631
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25632
    const/16 v2, 0x294

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25634
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25635
    const/16 v2, 0x296

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25637
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 25638
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    const/16 v2, 0x453

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_2

    .line 25640
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25641
    const/16 v2, 0x47e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25643
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 25644
    const/16 v2, 0x48e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25646
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25647
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25649
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 25650
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    const/16 v2, 0x560

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_3

    .line 25652
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 25653
    const/16 v2, 0x58a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25655
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 25656
    const/16 v2, 0x59d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25658
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 25659
    const/16 v2, 0x5ac

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25661
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 25662
    const/16 v2, 0x6fc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25664
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 25665
    const/16 v2, 0x740

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25667
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 25668
    return-void
.end method
