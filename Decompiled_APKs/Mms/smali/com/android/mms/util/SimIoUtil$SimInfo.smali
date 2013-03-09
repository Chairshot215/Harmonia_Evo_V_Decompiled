.class Lcom/android/mms/util/SimIoUtil$SimInfo;
.super Ljava/lang/Object;
.source "SimIoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SimIoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfo"
.end annotation


# instance fields
.field mMessageId:I

.field mStartPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/SimIoUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/mms/util/SimIoUtil$SimInfo;-><init>()V

    return-void
.end method
