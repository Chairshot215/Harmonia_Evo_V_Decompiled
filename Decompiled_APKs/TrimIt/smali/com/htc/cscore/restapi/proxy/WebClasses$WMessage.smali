.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageSMSType;,
        Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;
    }
.end annotation


# instance fields
.field public Body:Ljava/lang/String;

.field public CreateDate:Ljava/util/Date;

.field public HasViewed:Z

.field public Id:Ljava/util/UUID;

.field public MessageAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WMessageAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public MessageAttachmentsUpdated:Ljava/lang/Boolean;

.field public MessageRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WMessageRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public MessageRecipientsUpdated:Ljava/lang/Boolean;

.field public PudData:Lcom/htc/cscore/restapi/proxy/WebClasses$WPudData;

.field public Status:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage$WMessageStatusType;

.field public Subject:Ljava/lang/String;

.field public ThreadId:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method
