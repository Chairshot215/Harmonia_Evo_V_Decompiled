.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WMessageRecipient;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMessageRecipient"
.end annotation


# instance fields
.field public CanonicalPhoneNumber:J

.field public DisplayPhoneNumber:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public ThreadId:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
