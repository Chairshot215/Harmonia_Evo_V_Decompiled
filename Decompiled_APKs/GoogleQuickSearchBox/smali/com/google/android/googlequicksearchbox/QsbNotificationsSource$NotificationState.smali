.class final Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;
.super Ljava/lang/Object;
.source "QsbNotificationsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationState"
.end annotation


# instance fields
.field private final mExpiry:J

.field private final mKey:Ljava/lang/String;

.field private mRemainingShowCount:I

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;Ljava/lang/String;IJ)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "remainingShowCount"
    .parameter "expiry"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->this$0:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mKey:Ljava/lang/String;

    .line 233
    iput p3, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mRemainingShowCount:I

    .line 234
    iput-wide p4, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mExpiry:J

    .line 236
    #getter for: Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mStates:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->access$000(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method


# virtual methods
.method shouldShow()Z
    .locals 4

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mRemainingShowCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->this$0:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    #getter for: Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->mClock:Lcom/google/android/googlequicksearchbox/Clock;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->access$100(Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mExpiry:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showing()V
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mRemainingShowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mRemainingShowCount:I

    .line 246
    return-void
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mKey:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mRemainingShowCount:I

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationState;->mExpiry:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->stateToJson(Ljava/lang/String;IJ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
