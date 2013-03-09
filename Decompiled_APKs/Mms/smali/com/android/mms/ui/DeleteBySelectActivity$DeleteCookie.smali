.class Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;
.super Ljava/lang/Object;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteCookie"
.end annotation


# instance fields
.field eTime:J

.field isFinished:Z

.field sTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 503
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->isFinished:Z

    return-void
.end method
