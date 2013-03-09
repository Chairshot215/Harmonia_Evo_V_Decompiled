.class public Lcom/google/android/gsf/checkin/CheckinTask$Params;
.super Ljava/lang/Object;
.source "CheckinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/CheckinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field dropbox:Landroid/os/DropBoxManager;

.field marketData:Ljava/lang/String;

.field maxEventBytes:I

.field maxRequestBytes:I

.field maxRequests:I

.field minTimeAdjustmentMillis:J

.field minTimeSettingMillis:J

.field scheduler:Lcom/android/common/OperationScheduler;

.field serverUrl:Ljava/lang/String;

.field storage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x2

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    .line 103
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    .line 106
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    .line 109
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->marketData:Ljava/lang/String;

    .line 112
    const-string v0, "https://android.clients.google.com/checkin"

    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxEventBytes:I

    .line 118
    iput v1, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequestBytes:I

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequests:I

    .line 124
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeAdjustmentMillis:J

    .line 127
    const-wide/32 v0, -0x75817280

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeSettingMillis:J

    return-void
.end method
