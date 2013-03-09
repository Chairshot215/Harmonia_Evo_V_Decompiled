.class public Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileInfo"
.end annotation


# instance fields
.field public exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field sncPushNotification:Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;

.field sncSyncNotification:Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "xobj"

    .prologue
    .line 461
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const-string v0, "sncGetProfileResponse:sncProfile:firstName"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->firstName:Ljava/lang/String;

    .line 463
    const-string v0, "sncGetProfileResponse:sncProfile:lastName"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->lastName:Ljava/lang/String;

    .line 464
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    const-string v1, "sncGetProfileResponse:sncProfile:sncExchangeInfo"

    invoke-static {p1, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    .line 465
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;

    const-string v1, "sncGetProfileResponse:sncProfile:sncPushNotification"

    invoke-static {p1, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->sncPushNotification:Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;

    .line 466
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;

    const-string v1, "sncGetProfileResponse:sncProfile:sncSyncNotification"

    invoke-static {p1, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->sncSyncNotification:Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;

    .line 467
    return-void
.end method
