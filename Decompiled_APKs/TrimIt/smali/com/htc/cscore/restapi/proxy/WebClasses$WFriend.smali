.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFriend"
.end annotation


# instance fields
.field public AccountImage:Lcom/htc/cscore/restapi/proxy/WebClasses$WProfileImage;

.field public AggregatePersonId:Ljava/util/UUID;

.field public EmailAddress:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public FriendRequestId:Ljava/util/UUID;

.field public LastName:Ljava/lang/String;

.field public Message:Ljava/lang/String;

.field public PhoneNumberString:Ljava/lang/String;

.field public Status:I

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
