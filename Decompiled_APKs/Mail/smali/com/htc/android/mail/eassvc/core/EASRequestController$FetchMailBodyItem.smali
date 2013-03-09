.class public Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchMailBodyItem"
.end annotation


# instance fields
.field public accountId:J

.field public allOrNone:I

.field public collId:Ljava/lang/String;

.field public httpPost:Lorg/apache/http/client/methods/HttpPost;

.field public isCanceled:Z

.field public isGlobalMail:Z

.field public truncationSize:J

.field public type:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2557
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
