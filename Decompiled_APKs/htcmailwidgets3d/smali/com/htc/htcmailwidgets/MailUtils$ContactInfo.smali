.class public Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
.super Ljava/lang/Object;
.source "MailUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field public jpgdata:[B

.field public name:Ljava/lang/String;

.field public photo_id:J

.field public pid:J

.field public socialtype:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J

    return-void
.end method
