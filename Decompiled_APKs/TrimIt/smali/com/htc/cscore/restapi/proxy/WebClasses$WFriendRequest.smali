.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WFriendRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;
    }
.end annotation


# instance fields
.field public FriendsDeviceId:Ljava/util/UUID;

.field public Id:Ljava/util/UUID;

.field public Message:Ljava/lang/String;

.field public PersonId:Ljava/util/UUID;

.field public Status:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public Timestamp:Ljava/util/Date;

.field public VirtualDevice:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    return-void
.end method
