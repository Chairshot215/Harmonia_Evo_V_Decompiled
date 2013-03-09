.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDeviceMissedCall;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVirtualDeviceMissedCall"
.end annotation


# instance fields
.field public CreateDate:Ljava/util/Date;

.field public Id:Ljava/util/UUID;

.field public IsViewed:Z

.field public PhoneNumber:Ljava/lang/String;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
