.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPersonPhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;
    }
.end annotation


# instance fields
.field public CanonicalPhoneNumber:J

.field public DisplayPhoneNumber:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public PersonId:Ljava/util/UUID;

.field public PhoneNumberType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonPhoneNumber$WPersonPhoneNumberType;

.field public Priority:I

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    return-void
.end method
