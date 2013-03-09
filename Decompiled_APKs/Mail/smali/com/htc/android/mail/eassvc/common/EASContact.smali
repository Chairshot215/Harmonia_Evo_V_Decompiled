.class public Lcom/htc/android/mail/eassvc/common/EASContact;
.super Ljava/lang/Object;
.source "EASContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;
    }
.end annotation


# instance fields
.field public AccountName:Ljava/lang/String;

.field public Anniversary:Ljava/lang/String;

.field public AssistantName:Ljava/lang/String;

.field public AssistantTelephoneNumber:Ljava/lang/String;

.field public Birthday:Ljava/lang/String;

.field public Body:Ljava/lang/String;

.field public BodySize:Ljava/lang/String;

.field public BodyTruncated:Ljava/lang/String;

.field public Business2TelephoneNumber:Ljava/lang/String;

.field public BusinessAddressCity:Ljava/lang/String;

.field public BusinessAddressCountry:Ljava/lang/String;

.field public BusinessAddressPostalCode:Ljava/lang/String;

.field public BusinessAddressState:Ljava/lang/String;

.field public BusinessAddressStreet:Ljava/lang/String;

.field public BusinessFaxNumber:Ljava/lang/String;

.field public BusinessTelephoneNumber:Ljava/lang/String;

.field public CarTelephoneNumber:Ljava/lang/String;

.field public Categories:Ljava/lang/String;

.field public Category:[Ljava/lang/String;

.field public Child:Ljava/lang/String;

.field public Children:Ljava/lang/String;

.field public ClientId:Ljava/lang/String;

.field public CompanyMainPhone:Ljava/lang/String;

.field public CompanyName:Ljava/lang/String;

.field public CompressedRTF:Ljava/lang/String;

.field public CustomerId:Ljava/lang/String;

.field public Department:Ljava/lang/String;

.field public Email1Address:Ljava/lang/String;

.field public Email2Address:Ljava/lang/String;

.field public Email3Address:Ljava/lang/String;

.field public FileAs:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public GovernmentId:Ljava/lang/String;

.field public Home2TelephoneNumber:Ljava/lang/String;

.field public HomeAddressCity:Ljava/lang/String;

.field public HomeAddressCountry:Ljava/lang/String;

.field public HomeAddressPostalCode:Ljava/lang/String;

.field public HomeAddressState:Ljava/lang/String;

.field public HomeAddressStreet:Ljava/lang/String;

.field public HomeFaxNumber:Ljava/lang/String;

.field public HomeTelephoneNumber:Ljava/lang/String;

.field public IMAddr:Ljava/lang/String;

.field public IMAddress2:Ljava/lang/String;

.field public IMAddress3:Ljava/lang/String;

.field public JobTitle:Ljava/lang/String;

.field public LastName:Ljava/lang/String;

.field public MMS:Ljava/lang/String;

.field public ManagerName:Ljava/lang/String;

.field public MiddleName:Ljava/lang/String;

.field public MobileTelephoneNumber:Ljava/lang/String;

.field public NickName:Ljava/lang/String;

.field public OfficeLocation:Ljava/lang/String;

.field public OtherAddressCity:Ljava/lang/String;

.field public OtherAddressCountry:Ljava/lang/String;

.field public OtherAddressPostalCode:Ljava/lang/String;

.field public OtherAddressState:Ljava/lang/String;

.field public OtherAddressStreet:Ljava/lang/String;

.field public PagerNumber:Ljava/lang/String;

.field public Picture:Ljava/lang/String;

.field public RadioTelephoneNumber:Ljava/lang/String;

.field public ServerID:Ljava/lang/String;

.field public Spouse:Ljava/lang/String;

.field public Suffix:Ljava/lang/String;

.field public Title:Ljava/lang/String;

.field public UnsupportedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;",
            ">;"
        }
    .end annotation
.end field

.field public Webpage:Ljava/lang/String;

.field public YomiCompanyName:Ljava/lang/String;

.field public YomiFirstName:Ljava/lang/String;

.field public YomiLastName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASContact;->UnsupportedList:Ljava/util/ArrayList;

    .line 77
    return-void
.end method
