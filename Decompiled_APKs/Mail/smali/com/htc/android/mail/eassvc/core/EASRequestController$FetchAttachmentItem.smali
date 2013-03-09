.class public Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchAttachmentItem"
.end annotation


# instance fields
.field public accountId:J

.field public attachType:I

.field public fileReference:Ljava/lang/String;

.field public httpPost:Lorg/apache/http/client/methods/HttpPost;

.field public isCanceled:Z

.field public isGlobalAttach:Z

.field public partId:Ljava/lang/String;

.field public savePath:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
