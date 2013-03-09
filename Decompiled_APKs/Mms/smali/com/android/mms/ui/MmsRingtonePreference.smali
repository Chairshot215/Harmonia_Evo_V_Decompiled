.class public Lcom/android/mms/ui/MmsRingtonePreference;
.super Lcom/htc/preference/HtcRingtonePreference;
.source "MmsRingtonePreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.sdm.provider.SDMProvider"

.field public static final ID_MSG:I = 0x6

.field public static final ID_NOTIFICATION:I = 0x3

.field public static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field private static LastRequestCode:I = 0x0

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final RECEIVED_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_received_ringtone"

.field public static final REF_T_MSG:Ljava/lang/String; = "Message"

.field public static final REF_T_NOTIFICATION:Ljava/lang/String; = "S_Notify"

.field public static final REQUEST_CODE_RECEIVED_NOTIFICATION:I = 0x64

.field public static final REQUEST_CODE_SENT_NOTIFICATION:I = 0x65

.field public static final REQUEST_FROM_RECEIVED_NOTIFICATION:I = 0x67

.field public static final REQUEST_FROM_SENT_NOTIFICATION:I = 0x68

.field public static final REQUEST_FROM_VVM_RECEIVED_NOTIFICATION:I = 0x69

.field public static final REQUEST_VVM_CODE_RECEIVED_NOTIFICATION:I = 0x66

.field public static RecRingtone:Landroid/net/Uri; = null

.field public static final SDMDEFSTRURI:Ljava/lang/String; = "SDMDefStrUri"

.field public static final SDMPICKERTYPE:Ljava/lang/String; = "SDMPickerType"

.field public static final SDMSAVEORNOT:Ljava/lang/String; = "SDMSaveOrNot"

.field public static final SDM_PROVIDER_AUTHORITY:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SETTING:Landroid/net/Uri; = null

.field public static final SENT_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_sent_ringtone"

.field public static SentRingtone:Landroid/net/Uri; = null

.field private static final TABLE_NAME_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG:Ljava/lang/String; = "HtcRingtonePreference"

.field public static VVMRecRingtone:Landroid/net/Uri; = null

.field public static final VVM_RECEIVED_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_vvm_notification_ringtone"

.field public static final defaultRingTone:Ljava/lang/String; = "content://settings/system/msg_notification"

.field public static old_RecRingtone:Ljava/lang/String;

.field public static old_SentRingtone:Ljava/lang/String;

.field public static old_VVMRecRingtone:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static receiverName:Ljava/lang/String;


# instance fields
.field private final DEFAULT_MSG_NOTIFICATION_URI:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v0, "content://com.htc.sdm.provider.SDMProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    .line 92
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "setting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    .line 101
    const/16 v0, 0x67

    sput v0, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    .line 105
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->receiverName:Ljava/lang/String;

    .line 106
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->packageName:Ljava/lang/String;

    .line 109
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->RecRingtone:Landroid/net/Uri;

    .line 110
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->SentRingtone:Landroid/net/Uri;

    .line 111
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->VVMRecRingtone:Landroid/net/Uri;

    .line 113
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->old_RecRingtone:Ljava/lang/String;

    .line 114
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->old_SentRingtone:Ljava/lang/String;

    .line 115
    sput-object v2, Lcom/android/mms/ui/MmsRingtonePreference;->old_VVMRecRingtone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 136
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MmsRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const-string v1, "content://settings/system/msg_notification"

    iput-object v1, p0, Lcom/android/mms/ui/MmsRingtonePreference;->DEFAULT_MSG_NOTIFICATION_URI:Ljava/lang/String;

    .line 122
    sget-object v1, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mRingtoneType:I

    .line 126
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mShowDefault:Z

    .line 128
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mShowSilent:Z

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iput-object p1, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public static getRecRing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->RecRingtone:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->RecRingtone:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSDBSoundSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 312
    const/4 v8, 0x0

    .line 313
    .local v8, soundfile:Ljava/lang/String;
    const/4 v6, 0x0

    .line 314
    .local v6, c:Landroid/database/Cursor;
    const-string v9, ""

    .line 315
    .local v9, strSoundUri:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;->refType:Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MmsRingtonePreference;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;->soundUri:Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRingtonePreference$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 326
    :cond_0
    if-eqz v6, :cond_1

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_1
    :goto_0
    return-object v8

    .line 322
    :catch_0
    move-exception v7

    .line 323
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSDBSoundSetting Exception ex= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v6, :cond_1

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 326
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getSentRing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->SentRingtone:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->SentRingtone:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVVMRecRing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->VVMRecRingtone:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/android/mms/ui/MmsRingtonePreference;->VVMRecRingtone:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized mediaUpdateRequest(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    .line 337
    const-class v6, Lcom/android/mms/ui/MmsRingtonePreference;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessageStatusReceiver;->bMediaUpgarde:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 389
    :goto_0
    monitor-exit v6

    return-void

    .line 340
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v7, ""

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v5

    const/4 v5, 0x1

    const-string v7, ""

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v5

    const/4 v5, 0x2

    const-string v7, ""

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v5

    .line 343
    .local v1, ids:[Landroid/net/Uri;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v3, mUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/mms/ui/MmsRingtonePreference;->packageName:Ljava/lang/String;

    .line 346
    const-string v5, "transaction.MessageStatusReceiver"

    sput-object v5, Lcom/android/mms/ui/MmsRingtonePreference;->receiverName:Ljava/lang/String;

    .line 348
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, reminderRingtone:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v5

    .line 352
    sput-object v4, Lcom/android/mms/ui/MmsRingtonePreference;->old_RecRingtone:Ljava/lang/String;

    .line 354
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSentRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 356
    const/4 v5, 0x1

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v5

    .line 358
    sput-object v4, Lcom/android/mms/ui/MmsRingtonePreference;->old_SentRingtone:Ljava/lang/String;

    .line 360
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVvmReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 362
    const/4 v5, 0x2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v5

    .line 363
    sput-object v4, Lcom/android/mms/ui/MmsRingtonePreference;->old_VVMRecRingtone:Ljava/lang/String;

    .line 366
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 367
    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_2
    const-string v5, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v5, "media_type"

    const/4 v7, 0x2

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v5, "media_ids_req"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 380
    const-string v5, "category"

    sget-object v7, Lcom/android/mms/ui/MmsRingtonePreference;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 385
    const-string v5, "HtcRingtonePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mediaUpdateRequest ids["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 388
    :cond_3
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/mms/transaction/MessageStatusReceiver;->bMediaUpgarde:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 337
    .end local v0           #i:I
    .end local v1           #ids:[Landroid/net/Uri;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4           #reminderRingtone:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static mediaUpdateRespone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    const-string v3, "media_ids_res"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 396
    .local v1, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    move-object v2, v3

    check-cast v2, [Landroid/net/Uri;

    .line 398
    .local v2, uris:[Landroid/net/Uri;
    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    .line 399
    aget-object v3, v2, v4

    sput-object v3, Lcom/android/mms/ui/MmsRingtonePreference;->RecRingtone:Landroid/net/Uri;

    .line 401
    :cond_0
    aget-object v3, v2, v5

    if-eqz v3, :cond_1

    .line 402
    aget-object v3, v2, v5

    sput-object v3, Lcom/android/mms/ui/MmsRingtonePreference;->SentRingtone:Landroid/net/Uri;

    .line 404
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    aget-object v3, v2, v6

    if-eqz v3, :cond_2

    .line 406
    aget-object v3, v2, v6

    sput-object v3, Lcom/android/mms/ui/MmsRingtonePreference;->VVMRecRingtone:Landroid/net/Uri;

    .line 409
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 410
    const-string v3, "HtcRingtonePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediaUpdateRespone uris["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSoundSetPicker()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.sdm.activity.SoundPicker"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 240
    sget v3, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    const/16 v6, 0x67

    if-ne v3, v6, :cond_3

    .line 241
    if-eqz p3, :cond_1

    if-ne v7, p2, :cond_1

    .line 242
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 243
    .local v1, soundUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms_preferences"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_received_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #soundUri:Landroid/net/Uri;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return v4

    .restart local v1       #soundUri:Landroid/net/Uri;
    :cond_2
    move v3, v5

    .line 243
    goto :goto_0

    .line 252
    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_3
    sget v3, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    const/16 v6, 0x69

    if-ne v3, v6, :cond_5

    .line 253
    if-eqz p3, :cond_1

    if-ne v7, p2, :cond_1

    .line 254
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 255
    .restart local v1       #soundUri:Landroid/net/Uri;
    if-eqz v1, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms_preferences"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 257
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_vvm_notification_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_4
    move v3, v5

    .line 255
    goto :goto_2

    .line 264
    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_5
    sget v3, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    const/16 v6, 0x68

    if-ne v3, v6, :cond_7

    .line 265
    if-eqz p3, :cond_1

    if-ne v7, p2, :cond_1

    .line 266
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 267
    .restart local v1       #soundUri:Landroid/net/Uri;
    if-eqz v1, :cond_6

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms_preferences"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 269
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_sent_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_6
    move v3, v5

    .line 267
    goto :goto_3

    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_7
    move v4, v5

    .line 276
    goto :goto_1

    .line 279
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 280
    const/16 v3, 0x64

    if-ne p1, v3, :cond_a

    .line 281
    if-eqz p3, :cond_1

    if-ne v7, p2, :cond_1

    .line 282
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 283
    .restart local v1       #soundUri:Landroid/net/Uri;
    if-eqz v1, :cond_9

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms_preferences"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 285
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_received_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_9
    move v3, v5

    .line 283
    goto :goto_4

    .line 292
    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_a
    const/16 v3, 0x65

    if-ne p1, v3, :cond_c

    .line 293
    if-eqz p3, :cond_1

    if-ne v7, p2, :cond_1

    .line 294
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 295
    .restart local v1       #soundUri:Landroid/net/Uri;
    if-eqz v1, :cond_b

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms_preferences"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 297
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_sent_ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_b
    move v3, v5

    .line 295
    goto :goto_5

    .end local v1           #soundUri:Landroid/net/Uri;
    :cond_c
    move v4, v5

    .line 304
    goto/16 :goto_1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 168
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSoundSetPicker()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.activity.SoundPicker"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, pref_key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const-string v8, "com.android.mms_preferences"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 172
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_received_ringtone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v2, myBundle:Landroid/os/Bundle;
    const-string v7, "SDMPickerType"

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v7, "SDMSaveOrNot"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const/4 v6, 0x0

    .line 178
    .local v6, sys_receivetone:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/ui/MmsRingtonePreference;->getSDBSoundSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 180
    const-string v7, "pref_key_received_ringtone"

    const-string v8, "content://settings/system/msg_notification"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, def_receivedtone:Ljava/lang/String;
    const-string v7, "HtcRingtonePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sound file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v6, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 184
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 185
    .local v3, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_key_received_ringtone"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    move-object v0, v6

    .line 192
    .end local v3           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v7, "SDMDefStrUri"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    const-string v7, "com.htc.sdm"

    const-string v8, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/16 v7, 0x67

    sput v7, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    .line 231
    .end local v0           #def_receivedtone:Ljava/lang/String;
    .end local v2           #myBundle:Landroid/os/Bundle;
    .end local v4           #pref_key:Ljava/lang/String;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    .end local v6           #sys_receivetone:Ljava/lang/String;
    :goto_0
    return-void

    .line 198
    .restart local v4       #pref_key:Ljava/lang/String;
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    :cond_2
    const-string v7, "pref_key_vvm_notification_ringtone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    const-string v7, "pref_key_vvm_notification_ringtone"

    const-string v8, "content://settings/system/msg_notification"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, def_senttone:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 201
    .restart local v2       #myBundle:Landroid/os/Bundle;
    const-string v7, "SDMPickerType"

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v7, "SDMSaveOrNot"

    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v7, "SDMDefStrUri"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    const-string v7, "com.htc.sdm"

    const-string v8, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/16 v7, 0x69

    sput v7, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    goto :goto_0

    .line 209
    .end local v1           #def_senttone:Ljava/lang/String;
    .end local v2           #myBundle:Landroid/os/Bundle;
    :cond_3
    const-string v7, "pref_key_sent_ringtone"

    const-string v8, "content://settings/system/msg_notification"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1       #def_senttone:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 211
    .restart local v2       #myBundle:Landroid/os/Bundle;
    const-string v7, "SDMPickerType"

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v7, "SDMSaveOrNot"

    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    const-string v7, "SDMDefStrUri"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 215
    const-string v7, "com.htc.sdm"

    const-string v8, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/16 v7, 0x68

    sput v7, Lcom/android/mms/ui/MmsRingtonePreference;->LastRequestCode:I

    goto :goto_0

    .line 221
    .end local v1           #def_senttone:Ljava/lang/String;
    .end local v2           #myBundle:Landroid/os/Bundle;
    .end local v4           #pref_key:Ljava/lang/String;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_4
    const-string v7, "android.intent.extra.ringtone.TITLE"

    iget-object v8, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    const v9, 0x7f090120

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    const-string v7, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v8, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v7, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const-string v7, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v8, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string v7, "android.intent.extra.ringtone.TYPE"

    iget v8, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, uriString:Ljava/lang/String;
    const-string v2, "HtcRingtonePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1--------------onRestoreRingtone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v2, "content://settings/system/msg_notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/MmsRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "msg_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v2, "HtcRingtonePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2-------------onRestoreRingtone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 154
    const-string v0, "HtcRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveRingtone uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsRingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 156
    return-void

    .line 155
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
