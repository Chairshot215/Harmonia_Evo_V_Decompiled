.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASMailSyncResult"
.end annotation


# instance fields
.field public firstRecordId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 740
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 741
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;->firstRecordId:J

    return-void
.end method
