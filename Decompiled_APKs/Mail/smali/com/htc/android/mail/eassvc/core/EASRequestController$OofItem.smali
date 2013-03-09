.class public Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OofItem"
.end annotation


# instance fields
.field public accountId:J

.field public command:I

.field public httpPost:Lorg/apache/http/client/methods/HttpPost;

.field public isCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2568
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->isCancelled:Z

    return-void
.end method
