.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonFriendStatusType;,
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;
    }
.end annotation


# instance fields
.field public AccountType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson$WPersonAccountType;

.field public AggregatedPersonId:Ljava/util/UUID;

.field public CompanyName:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public LastName:Ljava/lang/String;

.field public Notes:Ljava/lang/String;

.field public PersonAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress;",
            ">;"
        }
    .end annotation
.end field

.field public PersonAddressesUpdated:Ljava/lang/Boolean;

.field public PersonEmailAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field public PersonEmailAddressesUpdated:Ljava/lang/Boolean;

.field public PersonImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonImage;

.field public PersonPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field public PersonPhoneNumbersUpdated:Ljava/lang/Boolean;

.field public PersonSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonSetting;",
            ">;"
        }
    .end annotation
.end field

.field public PersonSettingsUpdated:Ljava/lang/Boolean;

.field public Timestamp:Ljava/util/Date;

.field public Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method
