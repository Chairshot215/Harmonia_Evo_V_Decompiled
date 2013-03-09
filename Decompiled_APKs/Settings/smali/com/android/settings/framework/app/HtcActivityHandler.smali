.class Lcom/android/settings/framework/app/HtcActivityHandler;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUICallback;,
        Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUICallback;,
        Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;,
        Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_ACTIVITY_RESULT:I = 0xa

.field private static final MESSAGE_ON_CREATE:I = 0x1

.field private static final MESSAGE_ON_DESTROY:I = 0x9

.field private static final MESSAGE_ON_PAUSE:I = 0x7

.field private static final MESSAGE_ON_POST_CREATE:I = 0x2

.field private static final MESSAGE_ON_POST_RESUME:I = 0x6

.field private static final MESSAGE_ON_RESTART:I = 0x4

.field private static final MESSAGE_ON_RESUME:I = 0x5

.field private static final MESSAGE_ON_START:I = 0x3

.field private static final MESSAGE_ON_STOP:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

.field private mFragment:Landroid/app/Fragment;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 289
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    .line 292
    instance-of v1, p1, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    if-eqz v1, :cond_0

    .line 293
    check-cast p1, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    .line 299
    return-void

    .line 295
    .restart local p1
    :cond_0
    const-string v0, "The activity must implement the \'HtcActivtyHandler.Callbacks\' interface."

    .line 297
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "The activity must implement the \'HtcActivtyHandler.Callbacks\' interface."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mFragment:Landroid/app/Fragment;

    .line 307
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    .line 309
    instance-of v1, p1, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    if-eqz v1, :cond_0

    .line 310
    check-cast p1, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    .line 316
    return-void

    .line 312
    .restart local p1
    :cond_0
    const-string v0, "The fragment must implement the \'HtcActivtyHandler.Callbacks\' interface."

    .line 314
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "The fragment must implement the \'HtcActivtyHandler.Callbacks\' interface."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1259
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/app/HtcActivityHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createHandlers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1118
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUICallback;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerUICallback;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/android/settings/framework/app/HtcActivityHandler$1;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    .line 1121
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1123
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUICallback;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/framework/app/HtcActivityHandler$HandlerNonUICallback;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/android/settings/framework/app/HtcActivityHandler$1;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 1125
    return-void
.end method

.method private destroyHandlers()V
    .locals 2

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1142
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1145
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/htc/preference/HtcPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 1223
    if-eqz p1, :cond_4

    .line 1225
    monitor-enter p0

    .line 1226
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    .line 1230
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1231
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_1
    instance-of v4, p1, Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v4, :cond_3

    .line 1238
    move-object v0, p1

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    move-object v1, v0

    .line 1240
    .local v1, category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 1243
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1244
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object p1

    .line 1249
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1250
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1254
    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_3
    monitor-exit p0

    .line 1256
    :cond_4
    return-void

    .line 1254
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected attachActivityAfterActivityCreated(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    .line 325
    return-void
.end method

.method public getNonUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v6, 0xa

    .line 848
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$10;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler$10;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;IILandroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 855
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 860
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 861
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 862
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 865
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    .line 866
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    iput-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->preference:Lcom/htc/preference/HtcPreference;

    .line 867
    iput-object p3, v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->args:Ljava/lang/Object;

    .line 869
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;

    if-eqz v4, :cond_0

    .line 870
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 878
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultInBackgroundListener;

    if-eqz v4, :cond_1

    .line 879
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 861
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 352
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->createHandlers()V

    .line 354
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$1;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$1;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 366
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 367
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 368
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 371
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    .line 372
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    iput-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->preference:Lcom/htc/preference/HtcPreference;

    .line 373
    iput-object p1, v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->args:Ljava/lang/Object;

    .line 375
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateListener;

    if-eqz v4, :cond_0

    .line 376
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 382
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnCreateInBackgroundListener;

    if-eqz v4, :cond_1

    .line 383
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 367
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 795
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$9;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$9;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 807
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 808
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 809
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 812
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 814
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;

    if-eqz v4, :cond_0

    .line 815
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 821
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;

    if-eqz v4, :cond_1

    .line 822
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 808
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcActivityHandler;->destroyHandlers()V

    .line 839
    return-void
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 673
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$7;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$7;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 685
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 686
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 687
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 690
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 692
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;

    if-eqz v4, :cond_0

    .line 693
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 699
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;

    if-eqz v4, :cond_1

    .line 700
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 686
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    .line 403
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$2;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler$2;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 415
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 416
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 417
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 420
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    .line 421
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    iput-object v2, v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->preference:Lcom/htc/preference/HtcPreference;

    .line 422
    iput-object p1, v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;->args:Ljava/lang/Object;

    .line 424
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateListener;

    if-eqz v4, :cond_0

    .line 425
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 431
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPostCreateInBackgroundListener;

    if-eqz v4, :cond_1

    .line 432
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 416
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onPostResume()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 607
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$6;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$6;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 619
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 620
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 621
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 624
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 626
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeListener;

    if-eqz v4, :cond_0

    .line 627
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 633
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnPostResumeInBackgroundListener;

    if-eqz v4, :cond_1

    .line 634
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 620
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onRestart()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 506
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$4;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$4;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 518
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 519
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 520
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 523
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 525
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartListener;

    if-eqz v4, :cond_0

    .line 526
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 532
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnRestartInBackgroundListener;

    if-eqz v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 560
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$5;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$5;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 567
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 572
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 573
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 574
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 577
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 579
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;

    if-eqz v4, :cond_0

    .line 580
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 586
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;

    if-eqz v4, :cond_1

    .line 587
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 573
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 459
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$3;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$3;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 471
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 472
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 473
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 476
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 478
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnStartListener;

    if-eqz v4, :cond_0

    .line 479
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 485
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnStartInBackgroundListener;

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 733
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/framework/app/HtcActivityHandler$8;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/app/HtcActivityHandler$8;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 745
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 746
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 747
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 750
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;Lcom/htc/preference/HtcPreference;)V

    .line 752
    .local v1, parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;

    if-eqz v4, :cond_0

    .line 753
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 759
    :cond_0
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcActivityListener$OnStopInBackgroundListener;

    if-eqz v4, :cond_1

    .line 760
    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 746
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    .end local v0           #i:I
    .end local v1           #parcel:Lcom/android/settings/framework/app/HtcActivityHandler$InternalParcel;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 654
    return-void
.end method

.method public requestHandlers()V
    .locals 6

    .prologue
    .line 1152
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1156
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1157
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1158
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 1160
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    if-eqz v3, :cond_0

    .line 1161
    check-cast v1, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v4, v5}, Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method protected runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    :cond_0
    return-void
.end method

.method protected runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    :cond_0
    return-void
.end method
