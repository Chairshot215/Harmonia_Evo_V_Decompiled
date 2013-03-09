.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WBindRequest"
.end annotation


# instance fields
.field public BindRequestId:Ljava/util/UUID;

.field public CountryCode:Ljava/lang/String;

.field public EmailAddress:Ljava/lang/String;

.field public HandsetDeviceId:Ljava/util/UUID;

.field public PhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
