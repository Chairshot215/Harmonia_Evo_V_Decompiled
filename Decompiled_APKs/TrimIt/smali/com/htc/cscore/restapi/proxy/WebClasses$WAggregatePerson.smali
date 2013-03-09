.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WAggregatePerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson$WAggregatePersonFriendStatusType;
    }
.end annotation


# instance fields
.field public AggregatePersonImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePersonImage;

.field public CustomRingtoneId:Ljava/util/UUID;

.field public DisplayName:Ljava/lang/String;

.field public FriendStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson$WAggregatePersonFriendStatusType;

.field public Id:Ljava/util/UUID;

.field public Persons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPerson;",
            ">;"
        }
    .end annotation
.end field

.field public PersonsUpdated:Ljava/lang/Boolean;

.field public SendToVoiceMail:Z

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method
