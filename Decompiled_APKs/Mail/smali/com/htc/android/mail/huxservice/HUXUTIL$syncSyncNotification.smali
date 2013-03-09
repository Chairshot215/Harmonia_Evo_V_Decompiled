.class public Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "syncSyncNotification"
.end annotation


# instance fields
.field endtTime:Ljava/lang/String;

.field startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "xobj"

    .prologue
    .line 406
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 408
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, attr:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 409
    const-string v1, "startTime"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;->startTime:Ljava/lang/String;

    .line 410
    const-string v1, "endTime"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$syncSyncNotification;->endtTime:Ljava/lang/String;

    .line 412
    :cond_0
    return-void
.end method
