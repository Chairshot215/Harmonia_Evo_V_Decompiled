.class Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteCookie"
.end annotation


# instance fields
.field eTime:J

.field sTime:J

.field token:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 664
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->token:Ljava/lang/Object;

    return-void
.end method
