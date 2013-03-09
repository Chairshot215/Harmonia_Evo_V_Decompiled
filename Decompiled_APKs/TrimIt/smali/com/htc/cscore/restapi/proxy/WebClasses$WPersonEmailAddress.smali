.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPersonEmailAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;
    }
.end annotation


# instance fields
.field public EmailAddress:Ljava/lang/String;

.field public EmailAddressType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonEmailAddress$WPersonEmailAddressType;

.field public Id:Ljava/util/UUID;

.field public PersonId:Ljava/util/UUID;

.field public Priority:I

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method
