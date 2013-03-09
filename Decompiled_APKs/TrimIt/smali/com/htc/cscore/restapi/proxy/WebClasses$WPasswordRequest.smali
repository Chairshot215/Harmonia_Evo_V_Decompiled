.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPasswordRequest"
.end annotation


# instance fields
.field public CaptchaChallengeField:Ljava/lang/String;

.field public CaptchaResponseField:Ljava/lang/String;

.field public EmailAddress:Ljava/lang/String;

.field public SecurityAnswer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
