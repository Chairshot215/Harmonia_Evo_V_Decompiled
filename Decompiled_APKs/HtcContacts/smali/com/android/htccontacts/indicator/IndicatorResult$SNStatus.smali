.class public final Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;
.super Ljava/lang/Object;
.source "IndicatorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/IndicatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SNStatus"
.end annotation


# instance fields
.field public dataId:J

.field public mimetype:Ljava/lang/String;

.field public status:Lcom/android/htccontacts/util/DataStatus;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
