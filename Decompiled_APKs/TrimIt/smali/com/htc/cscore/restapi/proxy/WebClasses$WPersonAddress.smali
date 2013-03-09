.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPersonAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;
    }
.end annotation


# instance fields
.field public AddressType:Lcom/htc/cscore/restapi/proxy/WebClasses$WPersonAddress$WPersonAddressType;

.field public City:Ljava/lang/String;

.field public Country:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public PersonId:Ljava/util/UUID;

.field public Priority:I

.field public Region:Ljava/lang/String;

.field public State:Ljava/lang/String;

.field public Street1:Ljava/lang/String;

.field public Street2:Ljava/lang/String;

.field public Timestamp:Ljava/util/Date;

.field public ZipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    return-void
.end method
