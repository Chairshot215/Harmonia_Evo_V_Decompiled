.class public Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
.super Ljava/lang/Object;
.source "EASEMail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASEMail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachInfo"
.end annotation


# instance fields
.field public AttachmentContentId:Ljava/lang/String;

.field public AttachmentDisplayName:Ljava/lang/String;

.field public AttachmentEstimatedDataSize:Ljava/lang/String;

.field public AttachmentFilePath:Ljava/lang/String;

.field public AttachmentFileRef:Ljava/lang/String;

.field public AttachmentIsInLine:Ljava/lang/String;

.field public AttachmentMethod:Ljava/lang/String;

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->id:J

    .line 103
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentDisplayName:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentFileRef:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentMethod:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentFilePath:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentContentId:Ljava/lang/String;

    return-void
.end method
