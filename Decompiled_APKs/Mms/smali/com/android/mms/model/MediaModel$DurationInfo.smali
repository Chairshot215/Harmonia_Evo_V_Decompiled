.class Lcom/android/mms/model/MediaModel$DurationInfo;
.super Ljava/lang/Object;
.source "MediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/MediaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DurationInfo"
.end annotation


# instance fields
.field mDuration:I

.field mValiedTimeMillis:J

.field final synthetic this$0:Lcom/android/mms/model/MediaModel;


# direct methods
.method private constructor <init>(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/mms/model/MediaModel$DurationInfo;->this$0:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/MediaModel$DurationInfo;->mDuration:I

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/model/MediaModel$DurationInfo;->mValiedTimeMillis:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/mms/model/MediaModel$DurationInfo;-><init>(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method
