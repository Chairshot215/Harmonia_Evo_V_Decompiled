.class public Lcom/htc/android/mail/eassvc/common/EASCommon$DeviceInformation;
.super Ljava/lang/Object;
.source "EASCommon.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInformation"
.end annotation


# instance fields
.field public IMEI:Ljava/lang/String;

.field public OS:Ljava/lang/String;

.field public OSLanguage:Ljava/lang/String;

.field public PhoneNumber:Ljava/lang/String;

.field public friendlyName:Ljava/lang/String;

.field public model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
