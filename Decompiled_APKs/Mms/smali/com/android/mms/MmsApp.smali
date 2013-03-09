.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/MmsApp$Customize;,
        Lcom/android/mms/MmsApp$InitCacheTask;,
        Lcom/android/mms/MmsApp$ShowToastTask;,
        Lcom/android/mms/MmsApp$MmsDbCleanupTask;,
        Lcom/android/mms/MmsApp$RenameKey;,
        Lcom/android/mms/MmsApp$IongKey;,
        Lcom/android/mms/MmsApp$IntKey;,
        Lcom/android/mms/MmsApp$CmasSeriveTable;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "com.htc.message.action.update_unread_message_count"

.field public static final BUBBLE_STYLE_NEW:I = 0x2

.field public static final BUBBLE_STYLE_UNREAD:I = 0x1

.field public static final CHECK_CMAS_FLAG:I = -0x3e8

.field public static final CLEAR_SHORTCUT_TIMESTAMP:Ljava/lang/String; = "clear_shortcut_timestamp"

.field public static final LOG_TAG:Ljava/lang/String; = "Mms"

.field public static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static MMS_DEFAULT_SLIDE_DURATION:I = 0x0

.field private static MMS_MAX_RECIPIENT_NUMBER:I = 0x0

.field private static MMS_MAX_SLIDE_NUMBER:I = 0x0

.field private static MMS_MAX_TEXT_SIZE:I = 0x0

.field private static MMS_RETRY_POLICY:Ljava/lang/String; = null

.field public static final MSG_SHARE_PREF_NAME:Ljava/lang/String; = "com.android.mms.shared_pref"

.field private static MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory; = null

.field public static final PREF_KEY_CMAS_SETTING_ENABLE:Ljava/lang/String; = "pref_key_cmas_setting_enable"

.field public static final PREF_KEY_NEW_INCOMING_MSG_COUNT:Ljava/lang/String; = "pref_key_new_incoming_count"

.field public static final SMS_EMAIL_NUMBER_ATT:Ljava/lang/String; = "36245"

.field public static final SMS_EMAIL_NUMBER_CHT:Ljava/lang/String; = "313"

.field public static final SMS_EMAIL_NUMBER_VZW:Ljava/lang/String; = "6245"

.field private static SMS_MAX_CONCATENATED_NUMBER:I = 0x0

.field private static SMS_MAX_RECIPIENT_NUMBER:I = 0x0

.field public static SUPPORT_PRIME:Z = false

.field private static final TAG:Ljava/lang/String; = "Messaging"

.field public static final UNREAD_LIMIT_COUNT:I = 0x63

.field public static final UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "unread_message_count"

.field private static bCacheInitialized:Z

.field public static final cid:Ljava/lang/String;

.field public static final gcf:Ljava/lang/String;

.field private static has_set_default_value:Ljava/lang/String;

.field private static mAppObj:Landroid/content/Context;

.field private static mCarrierID:Ljava/lang/Integer;

.field public static mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

.field private static mDisplayHeight:Ljava/lang/Integer;

.field private static mDisplayWidth:Ljava/lang/Integer;

.field private static mDoneClearUnreadCount:Z

.field private static mEmailServerNumber:Ljava/lang/String;

.field private static mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

.field private static mIsSMSCEditable:Ljava/lang/Boolean;

.field private static mIsSupportClassZeroSave:Ljava/lang/Boolean;

.field private static mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

.field private static mIsSupportEmptyDraft:Ljava/lang/Boolean;

.field private static mIsSupportEmptySms:Ljava/lang/Boolean;

.field private static mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

.field private static mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

.field private static mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

.field private static mIsSupportMMSPriority:Ljava/lang/Boolean;

.field private static mIsSupportMMSReadReport:Ljava/lang/Boolean;

.field private static mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

.field private static mIsSupportSMS2Email:Ljava/lang/Boolean;

.field private static mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

.field private static mIsSupportSMSCharacters:Ljava/lang/Boolean;

.field private static mIsSupportSMSPriority:Ljava/lang/Boolean;

.field private static mIsSupportSMSSubject:Ljava/lang/Boolean;

.field private static mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

.field private static mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

.field private static mIsSupportWapPush:Ljava/lang/Boolean;

.field private static mIsUseDeviceTime:Ljava/lang/Boolean;

.field public static mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

.field public static mNeedToUpdateDate2:Z

.field private static mNewInconmingMsgCount:I

.field private static mSMSHighPriorityLevel:I

.field private static mSmsManagerClass:Ljava/lang/Class;

.field private static m_bSupportForwardMsg:Z

.field private static m_bSupportTextSelection:Z

.field private static m_getCarrierID:Ljava/lang/reflect/Method;

.field static nShowMeListSize:I

.field private static sCustomerDisplayNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMccMnc:Ljava/lang/String;

.field private static sSenseVersion:F

.field private static volatile sSmsStorageAvailable:Z

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static s_mApplyNewMsgNotifyRule:I


# instance fields
.field private mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 114
    sput-boolean v4, Lcom/android/mms/MmsApp;->bCacheInitialized:Z

    .line 129
    sput v3, Lcom/android/mms/MmsApp;->MMS_MAX_RECIPIENT_NUMBER:I

    .line 130
    sput v3, Lcom/android/mms/MmsApp;->SMS_MAX_RECIPIENT_NUMBER:I

    .line 131
    sput v3, Lcom/android/mms/MmsApp;->SMS_MAX_CONCATENATED_NUMBER:I

    .line 132
    sput v3, Lcom/android/mms/MmsApp;->MMS_MAX_SLIDE_NUMBER:I

    .line 133
    sput v3, Lcom/android/mms/MmsApp;->MMS_DEFAULT_SLIDE_DURATION:I

    .line 134
    sput-object v2, Lcom/android/mms/MmsApp;->MMS_RETRY_POLICY:Ljava/lang/String;

    .line 137
    sput-boolean v5, Lcom/android/mms/MmsApp;->m_bSupportTextSelection:Z

    .line 138
    sput-boolean v5, Lcom/android/mms/MmsApp;->m_bSupportForwardMsg:Z

    .line 144
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportWapPush:Ljava/lang/Boolean;

    .line 145
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportEmptyDraft:Ljava/lang/Boolean;

    .line 146
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMS2Email:Ljava/lang/Boolean;

    .line 147
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

    .line 148
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMSSubject:Ljava/lang/Boolean;

    .line 149
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportClassZeroSave:Ljava/lang/Boolean;

    .line 150
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportEmptySms:Ljava/lang/Boolean;

    .line 151
    sput-object v2, Lcom/android/mms/MmsApp;->mIsUseDeviceTime:Ljava/lang/Boolean;

    .line 152
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSMSCEditable:Ljava/lang/Boolean;

    .line 153
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMSCharacters:Ljava/lang/Boolean;

    .line 155
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    .line 156
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

    .line 157
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

    .line 158
    sput-object v2, Lcom/android/mms/MmsApp;->mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

    .line 159
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

    .line 160
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

    .line 161
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

    .line 162
    sput-object v2, Lcom/android/mms/MmsApp;->mEmailServerNumber:Ljava/lang/String;

    .line 164
    sput v4, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    .line 165
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportMMSReadReport:Ljava/lang/Boolean;

    .line 166
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

    .line 167
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportMMSPriority:Ljava/lang/Boolean;

    .line 171
    sput-object v2, Lcom/android/mms/MmsApp;->mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

    .line 189
    new-instance v1, Lcom/android/mms/MmsApp$CmasSeriveTable;

    invoke-direct {v1}, Lcom/android/mms/MmsApp$CmasSeriveTable;-><init>()V

    sput-object v1, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    .line 206
    sput-object v2, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    .line 213
    sput-object v2, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    .line 217
    sput-boolean v4, Lcom/android/mms/MmsApp;->mDoneClearUnreadCount:Z

    .line 218
    sput v3, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    .line 223
    const-string v1, ""

    sput-object v1, Lcom/android/mms/MmsApp;->sMccMnc:Ljava/lang/String;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/MmsApp;->sCustomerDisplayNameMap:Ljava/util/HashMap;

    .line 229
    sput v3, Lcom/android/mms/MmsApp;->s_mApplyNewMsgNotifyRule:I

    .line 238
    sput-boolean v4, Lcom/android/mms/MmsApp;->mNeedToUpdateDate2:Z

    .line 240
    const-string v1, "_has_set_default_values"

    sput-object v1, Lcom/android/mms/MmsApp;->has_set_default_value:Ljava/lang/String;

    .line 244
    sput-boolean v4, Lcom/android/mms/MmsApp;->SUPPORT_PRIME:Z

    .line 246
    const-string v1, "ro.da1.enable"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/MmsApp;->SUPPORT_PRIME:Z

    .line 249
    sput-boolean v5, Lcom/android/mms/MmsApp;->sSmsStorageAvailable:Z

    .line 253
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    const/16 v1, 0x1388

    sput v1, Lcom/android/mms/MmsApp;->MMS_MAX_TEXT_SIZE:I

    .line 287
    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    .line 1148
    sput-object v2, Lcom/android/mms/MmsApp;->mSmsManagerClass:Ljava/lang/Class;

    .line 1149
    sput-object v2, Lcom/android/mms/MmsApp;->m_getCarrierID:Ljava/lang/reflect/Method;

    .line 2418
    sput-object v2, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    .line 3405
    sput v3, Lcom/android/mms/MmsApp;->nShowMeListSize:I

    .line 3895
    const-string v1, "ro.build.gcf"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsApp;->gcf:Ljava/lang/String;

    return-void

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 256
    .restart local v0       #e:Ljava/lang/Exception;
    const/high16 v1, 0x3f80

    sput v1, Lcom/android/mms/MmsApp;->sSenseVersion:F

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 208
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    .line 2410
    return-void
.end method

.method private SaveOldPreferenceXml(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 20
    .parameter "prefs"
    .parameter "name"

    .prologue
    .line 3937
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3938
    .local v5, bHasCastException:Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 3940
    .local v12, prefs_temp:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 3942
    .local v10, prefEdit:Landroid/content/SharedPreferences$Editor;
    const-string v17, "Mms"

    const-string v18, "SaveOldPreferenceXml start"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    .line 3947
    .local v11, prefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3948
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3949
    .local v13, str:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3950
    .local v16, strkey:Ljava/lang/String;
    const/4 v14, 0x0

    .line 3951
    .local v14, strErr:Ljava/lang/String;
    const-string v17, "Mms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "str="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",strkey="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "false"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3953
    :cond_1
    const-string v17, "Mms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "putBoolean="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3996
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #prefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v13           #str:Ljava/lang/String;
    .end local v14           #strErr:Ljava/lang/String;
    .end local v16           #strkey:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 3997
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "Mms"

    const-string v18, "!save old PreferenceXml"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3999
    .end local v6           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 3957
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #prefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v13       #str:Ljava/lang/String;
    .restart local v14       #strErr:Ljava/lang/String;
    .restart local v16       #strkey:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v18, "1"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3958
    .local v15, strTest:Ljava/lang/String;
    const-string v17, "Mms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "strTest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3962
    const-string v17, "Mms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "putString="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3970
    .end local v15           #strTest:Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3972
    const-string v17, "java.lang.Integer"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3974
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 3976
    .local v9, intTest:I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3977
    const-string v17, "Mms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intTest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    .end local v9           #intTest:I
    :cond_3
    :goto_3
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3988
    goto/16 :goto_0

    .line 3964
    :catch_1
    move-exception v6

    .line 3965
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v17, "Mms"

    const-string v18, "!getString....."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3966
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3967
    invoke-virtual {v6}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 3979
    .end local v6           #e:Ljava/lang/ClassCastException;
    :cond_4
    const-string v17, "java.lang.Long"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3981
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3983
    .local v4, LongTest:Ljava/lang/Long;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3984
    const-string v17, "Mms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LongTest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3992
    .end local v4           #LongTest:Ljava/lang/Long;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v13           #str:Ljava/lang/String;
    .end local v14           #strErr:Ljava/lang/String;
    .end local v16           #strkey:Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3993
    const-string v17, "Mms"

    const-string v18, "SaveOldPreferenceXml end"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public static UpdateFOTADataFormat()V
    .locals 12

    .prologue
    .line 3798
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3800
    .local v5, pref:Landroid/content/SharedPreferences;
    if-nez v5, :cond_0

    .line 3850
    :goto_0
    return-void

    .line 3803
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 3805
    .local v6, prefEdit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/mms/MmsApp$IntKey;->values()[Lcom/android/mms/MmsApp$IntKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/mms/MmsApp$IntKey;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 3807
    .local v3, key:Lcom/android/mms/MmsApp$IntKey;
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IntKey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    :try_start_0
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IntKey;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, -0x64

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3811
    .local v8, test:I
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "test="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3805
    .end local v8           #test:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3812
    :catch_0
    move-exception v1

    .line 3813
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v9, "Messaging"

    const-string v10, "!IntKey....."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3814
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IntKey;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3815
    .local v7, strValue:Ljava/lang/String;
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IntKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3817
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IntKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3822
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v3           #key:Lcom/android/mms/MmsApp$IntKey;
    .end local v7           #strValue:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp$IongKey;->values()[Lcom/android/mms/MmsApp$IongKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/mms/MmsApp$IongKey;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 3824
    .local v3, key:Lcom/android/mms/MmsApp$IongKey;
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IongKey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    :try_start_1
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IongKey;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-interface {v5, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 3828
    .local v8, test:Ljava/lang/Long;
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "test="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3822
    .end local v8           #test:Ljava/lang/Long;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3829
    :catch_1
    move-exception v1

    .line 3830
    .restart local v1       #e:Ljava/lang/ClassCastException;
    const-string v9, "Messaging"

    const-string v10, "!IntKey....."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3831
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IongKey;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3832
    .restart local v7       #strValue:Ljava/lang/String;
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IongKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3834
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$IongKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v6, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 3839
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v3           #key:Lcom/android/mms/MmsApp$IongKey;
    .end local v7           #strValue:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp$RenameKey;->values()[Lcom/android/mms/MmsApp$RenameKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/mms/MmsApp$RenameKey;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 3840
    .local v3, key:Lcom/android/mms/MmsApp$RenameKey;
    const-string v9, "pref_key_signature_text_by_user"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3841
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$RenameKey;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3842
    .local v8, test:Z
    const-string v9, "Messaging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "signature_text_by_user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const-string v9, "pref_key_signature_text_by_user"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3844
    invoke-virtual {v3}, Lcom/android/mms/MmsApp$RenameKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3839
    .end local v8           #test:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3848
    .end local v3           #key:Lcom/android/mms/MmsApp$RenameKey;
    :cond_4
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 108
    invoke-static {}, Lcom/android/mms/MmsApp;->setSmsManagerClass()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/mms/MmsApp;->mSmsManagerClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/mms/MmsApp;->m_getCarrierID:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    sput-object p0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 108
    invoke-static {}, Lcom/android/mms/MmsApp;->syncCmasServiceTable()V

    return-void
.end method

.method public static declared-synchronized accumulateNewIncomingMSG()V
    .locals 6

    .prologue
    .line 2523
    const-class v3, Lcom/android/mms/MmsApp;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.android.mms.shared_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2526
    .local v1, sp:Landroid/content/SharedPreferences;
    sget v2, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    if-gez v2, :cond_0

    .line 2527
    const-string v2, "pref_key_new_incoming_count"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    .line 2529
    :cond_0
    sget v2, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    .line 2530
    const-string v2, "Messaging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accumulateNewIncomingMSG> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2532
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_new_incoming_count"

    sget v4, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2533
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2534
    monitor-exit v3

    return-void

    .line 2523
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static applyNewMsgNotifyRule(Z)V
    .locals 1
    .parameter "apply"

    .prologue
    .line 2570
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/mms/MmsApp;->s_mApplyNewMsgNotifyRule:I

    .line 2571
    return-void

    .line 2570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static changeFirstExecute(Z)V
    .locals 5
    .parameter "bFirst"

    .prologue
    .line 1854
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FIRST_EXECUTE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1856
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1857
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_FIRST_EXECUTE"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1858
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1860
    invoke-static {}, Lcom/android/mms/util/CustomizeProvider;->clearAll()V

    .line 1861
    return-void
.end method

.method public static checkCmasServiceTable()V
    .locals 1

    .prologue
    .line 3248
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/MmsApp;->syncCmasServiceTable(Z)V

    .line 3249
    return-void
.end method

.method public static doneWriteToSystemSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1841
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const-string v4, "NEED_WRITE_TO_SYSTEM_SETTING"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1844
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "KEY_WRITE_TO_SYSTEM_SETTING"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1845
    .local v0, bFirst:Z
    if-ne v0, v6, :cond_0

    .line 1846
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1847
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "KEY_WRITE_TO_SYSTEM_SETTING"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1848
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1850
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static easAllowSms(Z)V
    .locals 3
    .parameter "allow"

    .prologue
    .line 2816
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 2817
    const-string v1, "Messaging"

    const-string v2, "EAS allow SMS !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EAS_ALLOW_SMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2822
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "allow"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2823
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2824
    return-void

    .line 2819
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "Messaging"

    const-string v2, "EAS doesn\'t allow SMS !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableCmasSettings(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 3029
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mms.shared_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3031
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3032
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_cmas_setting_enable"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3033
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3034
    return-void
.end method

.method public static getAppliction()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1113
    sget-object v0, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    return-object v0
.end method

.method public static getCarrierID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1152
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getCustomizedDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 2890
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2891
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->sCustomerDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDefaultEmailServerNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 842
    const-string v0, "313"

    .line 843
    .local v0, str:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v1

    if-nez v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_1

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x5a

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v1, v2, :cond_2

    .line 854
    :cond_1
    const-string v0, "6245"

    .line 856
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 857
    const-string v0, "36245"

    .line 860
    :cond_3
    return-object v0
.end method

.method public static getDefaultMMSSlideDuration()I
    .locals 4

    .prologue
    .line 2378
    sget v1, Lcom/android/mms/MmsApp;->MMS_DEFAULT_SLIDE_DURATION:I

    if-gtz v1, :cond_0

    .line 2379
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2380
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "MMS_Default_Slide_Duration"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->MMS_DEFAULT_SLIDE_DURATION:I

    .line 2382
    :cond_0
    sget v1, Lcom/android/mms/MmsApp;->MMS_DEFAULT_SLIDE_DURATION:I

    return v1
.end method

.method public static getDefaultMaxMMSRecipientNumber()I
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/16 v0, 0xa

    .line 2247
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return v0

    .line 2250
    :cond_1
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2251
    const/16 v0, 0x28

    goto :goto_0

    .line 2253
    :cond_2
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2254
    goto :goto_0

    .line 2256
    :cond_3
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2259
    const/16 v2, 0x98

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 2261
    goto :goto_0

    .line 2263
    :cond_4
    const/16 v1, 0x9e

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2264
    const/16 v0, 0x20

    goto :goto_0

    .line 2266
    :cond_5
    const/16 v1, 0x50

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2267
    const/16 v0, 0x19

    goto :goto_0

    .line 2269
    :cond_6
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_0

    .line 2270
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultMaxMMSSlideNumber()I
    .locals 1

    .prologue
    .line 2350
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    const/4 v0, 0x3

    .line 2357
    :goto_0
    return v0

    .line 2353
    :cond_0
    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2354
    const/16 v0, 0x14

    goto :goto_0

    .line 2357
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static getDefaultMaxSMSConcatenatedNumber()I
    .locals 4

    .prologue
    const/4 v0, 0x7

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 2308
    const/16 v3, 0xa8

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return v0

    .line 2310
    :cond_1
    const/16 v3, 0xa9

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2311
    const/4 v0, 0x4

    goto :goto_0

    .line 2312
    :cond_2
    const/16 v3, 0x71

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2313
    const/16 v0, 0x3e7

    goto :goto_0

    .line 2314
    :cond_3
    const/16 v3, 0x9e

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v2

    .line 2316
    goto :goto_0

    .line 2317
    :cond_5
    const/16 v3, 0x72

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2318
    const/4 v0, 0x6

    goto :goto_0

    .line 2319
    :cond_6
    const/16 v3, 0xd2

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x50

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v0, v1

    .line 2321
    goto :goto_0

    .line 2322
    :cond_8
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2324
    const/16 v0, 0xd9

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2325
    const/16 v0, 0x9

    goto :goto_0

    .line 2326
    :cond_9
    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2327
    const/16 v0, 0x14

    goto :goto_0

    .line 2328
    :cond_a
    const/16 v0, 0x51

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2329
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    .line 2330
    goto :goto_0

    :cond_b
    move v0, v2

    .line 2332
    goto :goto_0

    .line 2334
    :cond_c
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getDefaultMaxSMSRecipientNumber()I
    .locals 3

    .prologue
    const/16 v0, 0xa

    const/16 v1, 0xfa

    .line 2197
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2223
    :cond_0
    :goto_0
    return v0

    .line 2200
    :cond_1
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2201
    const/16 v0, 0x28

    goto :goto_0

    .line 2203
    :cond_2
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2204
    const/16 v0, 0x14

    goto :goto_0

    .line 2206
    :cond_3
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2209
    const/16 v0, 0x98

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2211
    const/16 v0, 0x64

    goto :goto_0

    .line 2213
    :cond_4
    const/16 v0, 0x9e

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 2214
    goto :goto_0

    .line 2216
    :cond_5
    const/16 v0, 0x50

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 2217
    goto :goto_0

    .line 2219
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2220
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 2223
    goto :goto_0
.end method

.method public static getDefaultSMSCharactersSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2080
    const-string v1, "BSTAR301"

    sget-object v2, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2089
    :cond_0
    :goto_0
    return v0

    .line 2083
    :cond_1
    const-string v1, "VODAP304"

    sget-object v2, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xae

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x35

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2088
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultShowConnectionSetting()Z
    .locals 1

    .prologue
    .line 959
    const/16 v0, 0xaf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    const/4 v0, 0x0

    .line 962
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultSupportForceDisplaySlidwshow()Z
    .locals 1

    .prologue
    .line 2735
    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9e

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    :cond_0
    const/4 v0, 0x1

    .line 2740
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultSupportShowTextAttachment()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2715
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9e

    if-ne v1, v2, :cond_2

    .line 2724
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailServerNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    sget-object v0, Lcom/android/mms/MmsApp;->mEmailServerNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 835
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 837
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mEmailServerNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getFileKiloSize()I
    .locals 1

    .prologue
    .line 3588
    const/16 v0, 0x400

    return v0
.end method

.method public static getIfApplyNewMsgNotifyRule()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2575
    sget v2, Lcom/android/mms/MmsApp;->s_mApplyNewMsgNotifyRule:I

    if-gez v2, :cond_0

    .line 2576
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v5, "com.android.mms.customizationBySIM"

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2579
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "MSG_new_msg_notify_rule_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2582
    .local v0, appNewMsg:Z
    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    sput v2, Lcom/android/mms/MmsApp;->s_mApplyNewMsgNotifyRule:I

    .line 2584
    :cond_0
    sget v2, Lcom/android/mms/MmsApp;->s_mApplyNewMsgNotifyRule:I

    if-lez v2, :cond_2

    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 2582
    goto :goto_0

    :cond_2
    move v3, v4

    .line 2584
    goto :goto_1
.end method

.method public static getIfApplyNewMsgShortcutRule()Z
    .locals 1

    .prologue
    .line 3544
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSense35BubbleRule()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIfEnableCmasSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3020
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3026
    :goto_0
    return v0

    .line 3021
    :cond_0
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3022
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mms.shared_pref"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_cmas_setting_enable"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3026
    goto :goto_0
.end method

.method public static getKiloSize()I
    .locals 1

    .prologue
    .line 3241
    const/16 v0, 0x400

    return v0
.end method

.method public static getMMSRetryPolicy()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2299
    sget-object v1, Lcom/android/mms/MmsApp;->MMS_RETRY_POLICY:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2300
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2301
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "MMS_Retry_Policy"

    const-string v2, "0,15,15,15,15,15,15"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsApp;->MMS_RETRY_POLICY:Ljava/lang/String;

    .line 2303
    :cond_0
    sget-object v1, Lcom/android/mms/MmsApp;->MMS_RETRY_POLICY:Ljava/lang/String;

    return-object v1
.end method

.method public static getMaxMMSRecipientNumber()I
    .locals 4

    .prologue
    .line 2278
    sget v1, Lcom/android/mms/MmsApp;->MMS_MAX_RECIPIENT_NUMBER:I

    if-gtz v1, :cond_0

    .line 2279
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2280
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "MMS_Max_Recipient_Number"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultMaxMMSRecipientNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->MMS_MAX_RECIPIENT_NUMBER:I

    .line 2282
    :cond_0
    sget v1, Lcom/android/mms/MmsApp;->MMS_MAX_RECIPIENT_NUMBER:I

    return v1
.end method

.method public static getMaxMMSSlideNumber()I
    .locals 4

    .prologue
    .line 2362
    sget v1, Lcom/android/mms/MmsApp;->MMS_MAX_SLIDE_NUMBER:I

    if-gtz v1, :cond_0

    .line 2363
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2364
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "MMS_Max_Slide_Number"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultMaxMMSSlideNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->MMS_MAX_SLIDE_NUMBER:I

    .line 2366
    :cond_0
    sget v1, Lcom/android/mms/MmsApp;->MMS_MAX_SLIDE_NUMBER:I

    return v1
.end method

.method public static getMaxSMSConcatenatedNumber()I
    .locals 4

    .prologue
    .line 2338
    sget v1, Lcom/android/mms/MmsApp;->SMS_MAX_CONCATENATED_NUMBER:I

    if-gtz v1, :cond_0

    .line 2339
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2340
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "SMS_Max_Concatenated_Number"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultMaxSMSConcatenatedNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->SMS_MAX_CONCATENATED_NUMBER:I

    .line 2342
    :cond_0
    sget v1, Lcom/android/mms/MmsApp;->SMS_MAX_CONCATENATED_NUMBER:I

    return v1
.end method

.method public static getMaxSMSRecipientNumber()I
    .locals 4

    .prologue
    .line 2234
    sget v1, Lcom/android/mms/MmsApp;->SMS_MAX_RECIPIENT_NUMBER:I

    if-gtz v1, :cond_0

    .line 2235
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mms.customizationBySIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2237
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "SMS_Max_Recipient_Number"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultMaxSMSRecipientNumber()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->SMS_MAX_RECIPIENT_NUMBER:I

    .line 2239
    :cond_0
    sget v1, Lcom/android/mms/MmsApp;->SMS_MAX_RECIPIENT_NUMBER:I

    return v1
.end method

.method public static getMaxTextSize()I
    .locals 2

    .prologue
    .line 3065
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3068
    :cond_0
    const/16 v1, 0x3e8

    sput v1, Lcom/android/mms/MmsApp;->MMS_MAX_TEXT_SIZE:I

    .line 3076
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    :goto_0
    sget v1, Lcom/android/mms/MmsApp;->MMS_MAX_TEXT_SIZE:I

    return v1

    .line 3070
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3071
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 3072
    .restart local v0       #cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v1

    sput v1, Lcom/android/mms/MmsApp;->MMS_MAX_TEXT_SIZE:I

    goto :goto_0

    .line 3075
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    :cond_2
    const/16 v1, 0x1388

    sput v1, Lcom/android/mms/MmsApp;->MMS_MAX_TEXT_SIZE:I

    goto :goto_0
.end method

.method public static getMessageViewFactory(Landroid/content/Context;)Lcom/android/mms/view/MessageViewFactory;
    .locals 2
    .parameter "ctxActivity"

    .prologue
    .line 1529
    if-nez p0, :cond_0

    .line 1530
    sget-object p0, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    .line 1534
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/MmsApp;->MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory;

    invoke-virtual {v0}, Lcom/android/mms/view/MessageViewFactory;->getFactoryContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_4

    .line 1536
    :cond_1
    const-class v1, Lcom/android/mms/MmsApp;

    monitor-enter v1

    .line 1537
    :try_start_0
    sget-object v0, Lcom/android/mms/MmsApp;->MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mms/MmsApp;->MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory;

    invoke-virtual {v0}, Lcom/android/mms/view/MessageViewFactory;->getFactoryContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 1539
    :cond_2
    new-instance v0, Lcom/android/mms/view/MessageViewFactory;

    invoke-direct {v0, p0}, Lcom/android/mms/view/MessageViewFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/MmsApp;->MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory;

    .line 1541
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    :cond_4
    sget-object v0, Lcom/android/mms/MmsApp;->MSG_VIEW_FACTORY:Lcom/android/mms/view/MessageViewFactory;

    return-object v0

    .line 1541
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getNewIncomingMsgCount()I
    .locals 4

    .prologue
    .line 2559
    const-class v1, Lcom/android/mms/MmsApp;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    if-gez v0, :cond_0

    .line 2560
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.mms.shared_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_new_incoming_count"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    .line 2564
    :cond_0
    sget v0, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 2559
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSMSHighPriorityLevel()I
    .locals 1

    .prologue
    .line 2472
    sget v0, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    if-nez v0, :cond_0

    .line 2473
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 2475
    :cond_0
    sget v0, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    return v0
.end method

.method public static getSenseVersion()F
    .locals 1

    .prologue
    .line 884
    sget v0, Lcom/android/mms/MmsApp;->sSenseVersion:F

    return v0
.end method

.method public static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 2896
    sget-object v0, Lcom/android/mms/MmsApp;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 2897
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/mms/MmsApp;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2900
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getUnicodeSubjectLimit()I
    .locals 1

    .prologue
    .line 2803
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 2810
    sget v0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    :goto_0
    return v0

    .line 2805
    :sswitch_0
    sget v0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_UNICODE_CMCC:I

    goto :goto_0

    .line 2807
    :sswitch_1
    sget v0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_UNICODE_KT:I

    goto :goto_0

    .line 2803
    :sswitch_data_0
    .sparse-switch
        0x50 -> :sswitch_1
        0xda -> :sswitch_0
    .end sparse-switch
.end method

.method public static hasCustomizedDisplayName(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 2884
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2885
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->sCustomerDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1549
    const-class v1, Lcom/android/mms/MmsApp;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/mms/MmsApp;->bCacheInitialized:Z

    if-nez v0, :cond_0

    .line 1550
    invoke-static {p0}, Lcom/android/mms/util/ContactNameCache;->init(Landroid/content/Context;)V

    .line 1551
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 1552
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 1553
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 1554
    invoke-static {p0}, Lcom/android/mms/model/ContentRestrictionFactory;->init(Landroid/content/Context;)V

    .line 1555
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 1560
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsApp;->bCacheInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    :cond_0
    monitor-exit v1

    return-void

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initCarrierID()V
    .locals 3

    .prologue
    .line 1177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/MmsApp$2;

    invoke-direct {v1}, Lcom/android/mms/MmsApp$2;-><init>()V

    const-string v2, "initCarrierID()"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1213
    return-void
.end method

.method public static initGeneralSIECustomization()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1566
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.mms.customizationBySIM"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1569
    .local v5, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.mms.customizationBySIM"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v1, file:Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1572
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->initCmasSupportStatus(Landroid/content/SharedPreferences;)Z

    .line 1573
    const-string v6, "SMS_Wap_Push_Support"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportWapPush()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportWapPush:Ljava/lang/Boolean;

    .line 1575
    const-string v6, "SMS_Empty_Draft_Support"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportEmptyDraft()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportEmptyDraft:Ljava/lang/Boolean;

    .line 1577
    const-string v6, "SMS_To_Email_Support"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportSMS2Email()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMS2Email:Ljava/lang/Boolean;

    .line 1579
    const-string v6, "SMS_Email_Server_Number"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultEmailServerNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mEmailServerNumber:Ljava/lang/String;

    .line 1581
    const-string v6, "SMS_Concatenated_Email_SMS"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportConcatenatedEmailSms()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

    .line 1583
    const-string v6, "SMS_Subject_Support"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportSMSSubject()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSSubject:Ljava/lang/Boolean;

    .line 1585
    const-string v6, "SMS_Class_Zero_Save_Support"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportClassZeroSave()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportClassZeroSave:Ljava/lang/Boolean;

    .line 1587
    const-string v6, "SMS_Empty_SMS_Support"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportEmptySms()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportEmptySms:Ljava/lang/Boolean;

    .line 1589
    const-string v6, "SMS_Use_Device_Time"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultUseDeviceTime()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsUseDeviceTime:Ljava/lang/Boolean;

    .line 1591
    const-string v6, "SMS_SMSC_Editable"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSmscEditable()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSMSCEditable:Ljava/lang/Boolean;

    .line 1593
    const-string v6, "SMS_Characters"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSMSCharactersSetting()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSCharacters:Ljava/lang/Boolean;

    .line 1596
    const-string v6, "SMS_Callback_Number"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

    .line 1598
    const-string v6, "MMS_Callback_Number"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

    .line 1601
    const-string v6, "RECIPT_Input_Type_Number"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultRecipientInputTypeNumber()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

    .line 1604
    const-string v6, "MMS_Show_Connection_Setting"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultShowConnectionSetting()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

    .line 1606
    const-string v6, "MMS_Show_All_Mixed_Text"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSupportShowTextAttachment()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

    .line 1609
    const-string v6, "MMS_Force_Display_In_Slideshow"

    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSupportForceDisplaySlidwshow()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

    .line 1611
    const-string v6, "MMS_Read_Report"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSReadReport:Ljava/lang/Boolean;

    .line 1612
    const-string v6, "MMS_Delivery_Report"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

    .line 1613
    const-string v6, "MMS_Priority"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSPriority:Ljava/lang/Boolean;

    .line 1615
    const-string v6, "MMS_Show_Restricted_Mode"

    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportMMSRestrictedMode()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

    .line 1617
    const/4 v2, 0x0

    .line 1618
    .local v2, highPriority:Ljava/lang/String;
    const-string v6, "SMS_High_Priority"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1622
    const/4 v3, 0x1

    .line 1623
    .local v3, initDefaultSmsPri:Z
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIE smsPri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1625
    const-string v6, "Unsupported"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1627
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    .line 1628
    const/4 v3, 0x0

    .line 1629
    sput v10, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    .line 1643
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1645
    sput v11, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    .line 1646
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportSMSPriority()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    .line 1650
    :cond_1
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportWapPush (By SIE)               : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportWapPush:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportEmptyDraft (By SIE)            : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportEmptyDraft:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportSMS2Email (By SIE)             : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportSMS2Email:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportConcatenatedEmailSms (By SIE)  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportSMSSubject (By SIE)            : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportSMSSubject:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportClassZeroSave (By SIE)         : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportClassZeroSave:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportEmptySms (By SIE)              : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportEmptySms:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSmscEditable (By SIE)                 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSMSCEditable:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportSMSCharacters (By SIE)         : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportSMSCharacters:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportSMSPriority (By SIE)           : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUseDeviceTime (By SIE)                : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsUseDeviceTime:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEmailServerNumber (By SIE)           : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mEmailServerNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSMSHighPriorityLevel (By SIE)        : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportSMSCallbackNumber (By SIE)     : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportMMSCallbackNumber (By SIE)     : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRecipientInputTypeNumber (By SIE)     : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportShowConnectionSetting (By SIE): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportShowAllTextAttachment (By SIE): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportForceDisplayInSlideshow (By SIE): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportMMSReadReport (By SIE)        : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportMMSReadReport:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportMMSDeliveryReport (By SIE)    : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportMMSPriority (By SIE)          : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportMMSPriority:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSupportMMSRestrictedMode (By SIE)    : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/mms/MmsApp;->mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v2           #highPriority:Ljava/lang/String;
    .end local v3           #initDefaultSmsPri:Z
    :goto_1
    return-void

    .line 1632
    .restart local v2       #highPriority:Ljava/lang/String;
    .restart local v3       #initDefaultSmsPri:Z
    :cond_2
    :try_start_0
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1633
    .local v4, priorities:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    .line 1634
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1638
    .end local v4           #priorities:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1639
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Messaging"

    const-string v7, "NumberForamtException for mSMSHighPriorityLevel:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1675
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #highPriority:Ljava/lang/String;
    .end local v3           #initDefaultSmsPri:Z
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportWapPush()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportWapPush:Ljava/lang/Boolean;

    .line 1676
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportEmptyDraft()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportEmptyDraft:Ljava/lang/Boolean;

    .line 1677
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportSMS2Email()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMS2Email:Ljava/lang/Boolean;

    .line 1678
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultEmailServerNumber()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mEmailServerNumber:Ljava/lang/String;

    .line 1679
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportConcatenatedEmailSms()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

    .line 1680
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportSMSSubject()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSSubject:Ljava/lang/Boolean;

    .line 1681
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportClassZeroSave()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportClassZeroSave:Ljava/lang/Boolean;

    .line 1682
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportEmptySms()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportEmptySms:Ljava/lang/Boolean;

    .line 1683
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultUseDeviceTime()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsUseDeviceTime:Ljava/lang/Boolean;

    .line 1684
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSmscEditable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSMSCEditable:Ljava/lang/Boolean;

    .line 1685
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSMSCharactersSetting()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSCharacters:Ljava/lang/Boolean;

    .line 1686
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportSMSPriority()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    .line 1687
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportCallback()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

    .line 1688
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportCallback()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

    .line 1689
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultRecipientInputTypeNumber()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

    .line 1691
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultShowConnectionSetting()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

    .line 1692
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSupportShowTextAttachment()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

    .line 1693
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultSupportForceDisplaySlidwshow()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

    .line 1695
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportMMSReadReport()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSReadReport:Ljava/lang/Boolean;

    .line 1696
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportMMSDeliveryReport()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

    .line 1697
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportMMSPriority()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSPriority:Ljava/lang/Boolean;

    .line 1699
    invoke-static {}, Lcom/android/mms/MmsApp;->isDefaultSupportMMSRestrictedMode()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/mms/MmsApp;->mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

    .line 1701
    sput v10, Lcom/android/mms/MmsApp;->mSMSHighPriorityLevel:I

    .line 1702
    const-string v6, "Messaging"

    const-string v7, "customizationBySIM.xml is not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static initSimOperatorData()V
    .locals 9

    .prologue
    .line 2906
    invoke-static {}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 2907
    .local v5, mccmnc:Ljava/lang/String;
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mccmnc> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2909
    :cond_1
    sput-object v5, Lcom/android/mms/MmsApp;->sMccMnc:Ljava/lang/String;

    .line 2919
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getCBChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2920
    .local v3, channelstr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getCBChannelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2921
    .local v2, channelnamestr:Ljava/lang/String;
    sget-object v6, Lcom/android/mms/MmsApp;->sCustomerDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2923
    if-nez v3, :cond_2

    .line 2924
    const-string v6, "Messaging"

    const-string v7, "initSimOperatorData is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2928
    :cond_2
    const-string v6, "Messaging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSimOperatorData channel/name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2931
    .local v0, channel:[Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2934
    .local v1, channelname:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_0

    .line 2935
    sget-object v6, Lcom/android/mms/MmsApp;->sCustomerDisplayNameMap:Ljava/util/HashMap;

    aget-object v7, v0, v4

    aget-object v8, v1, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isACGProject()Z
    .locals 2

    .prologue
    .line 1217
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x77

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x87

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x83

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8b

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8e

    if-ne v0, v1, :cond_1

    .line 1257
    :cond_0
    const/4 v0, 0x1

    .line 1259
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAlwaysShowMMSNotification()Z
    .locals 1

    .prologue
    .line 2746
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2747
    const/4 v0, 0x1

    .line 2748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAlwaysShowTextCounter()Z
    .locals 1

    .prologue
    .line 3354
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x50

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3357
    :cond_0
    const/4 v0, 0x1

    .line 3359
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCDMA_NV_based()Z
    .locals 1

    .prologue
    .line 2877
    const/4 v0, 0x1

    return v0
.end method

.method public static isCheckSmscAddressBeforeReplace()Z
    .locals 2

    .prologue
    .line 4041
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 4042
    const/4 v0, 0x0

    .line 4044
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isChinaSku()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3511
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xda

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    .line 3518
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmasEngineerModeEnabled()Z
    .locals 1

    .prologue
    .line 3039
    const/4 v0, 0x0

    return v0
.end method

.method public static isConversationSupportPhoto()Z
    .locals 1

    .prologue
    .line 1780
    const/4 v0, 0x1

    return v0
.end method

.method public static isDefaultRecipientInputTypeNumber()Z
    .locals 1

    .prologue
    .line 3693
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3695
    const/4 v0, 0x1

    .line 3697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultSmscEditable()Z
    .locals 5

    .prologue
    const/16 v4, 0x79

    const/4 v0, 0x1

    .line 1938
    const-string v1, "Messaging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PF/id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v4, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return v0

    .line 1943
    :cond_1
    sget-object v1, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_3

    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd6

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v4, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd9

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_3

    const-string v1, "BSTAR301"

    sget-object v2, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1955
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultSupportCallback()Z
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x62

    if-ne v0, v1, :cond_2

    .line 702
    :cond_1
    const/4 v0, 0x1

    .line 704
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultSupportClassZeroSave()Z
    .locals 2

    .prologue
    .line 1894
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    .line 1895
    const/4 v0, 0x0

    .line 1897
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDefaultSupportConcatenatedEmailSms()Z
    .locals 2

    .prologue
    .line 1760
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultSupportEmptyDraft()Z
    .locals 2

    .prologue
    .line 642
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v0

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_2

    .line 649
    :cond_1
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultSupportEmptySms()Z
    .locals 2

    .prologue
    .line 2107
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_1

    .line 2110
    :cond_0
    const/4 v0, 0x0

    .line 2111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDefaultSupportMMSDeliveryReport()Z
    .locals 2

    .prologue
    .line 1044
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    :cond_0
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDefaultSupportMMSPriority()Z
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x1

    return v0
.end method

.method public static isDefaultSupportMMSReadReport()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 1025
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/16 v1, 0xd2

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa8

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x5a

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    :cond_0
    const/4 v0, 0x0

    .line 1033
    :cond_1
    return v0
.end method

.method public static isDefaultSupportMMSRestrictedMode()Z
    .locals 1

    .prologue
    .line 3892
    const/4 v0, 0x0

    return v0
.end method

.method private static isDefaultSupportSMS2Email()Z
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0xa

    .line 761
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v0

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_2

    .line 773
    :cond_1
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultSupportSMSPriority()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 738
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_1

    .line 745
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-eq v1, v2, :cond_0

    .line 743
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDefaultSupportSMSSubject()Z
    .locals 2

    .prologue
    .line 1793
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 1794
    const/4 v0, 0x1

    .line 1796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultSupportWapPush()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 408
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    .line 418
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDefaultUseDeviceTime()Z
    .locals 2

    .prologue
    .line 2126
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v0

    if-nez v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2135
    :cond_2
    const/4 v0, 0x1

    .line 2137
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceFlag(S)Z
    .locals 1
    .parameter "byteDeviceFlag"

    .prologue
    .line 1012
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisableOutgoingFrom()Z
    .locals 1

    .prologue
    .line 3667
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3668
    const/4 v0, 0x1

    .line 3670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableAccentConvert()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2066
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportAccentConvert()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2074
    .local v0, pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v2

    .line 2069
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2071
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2074
    const-string v3, "pref_key_sms_characters"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static isEnableSendCallLog()Z
    .locals 4

    .prologue
    .line 2656
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 2657
    const/4 v0, 0x1

    .line 2660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableSkin()Z
    .locals 4

    .prologue
    .line 2510
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2511
    const/4 v0, 0x1

    .line 2513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableTheme()Z
    .locals 1

    .prologue
    .line 2500
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2503
    :cond_0
    const/4 v0, 0x1

    .line 2505
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFineTuneSaveDraft()Z
    .locals 1

    .prologue
    .line 3883
    const/4 v0, 0x0

    return v0
.end method

.method public static isFirstExecute()Z
    .locals 5

    .prologue
    .line 1823
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FIRST_EXECUTE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1826
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "KEY_FIRST_EXECUTE"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1828
    .local v0, bFirst:Z
    return v0
.end method

.method public static isFollowSprintCmas()Z
    .locals 1

    .prologue
    .line 4083
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGreekInputType7bit()Z
    .locals 4

    .prologue
    .line 1865
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1869
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_greek_encoding"

    const-string v3, "7bit"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1870
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "7bit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHDProject()Z
    .locals 2

    .prologue
    .line 3107
    sget-object v0, Lcom/android/mms/MmsApp;->mDisplayWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mDisplayHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    .line 3108
    const/4 v0, 0x1

    .line 3110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHideConnectionSetting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 950
    sget-object v1, Lcom/android/mms/MmsApp;->mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 951
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 953
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/android/mms/MmsApp;->mIsSupportShowConnectionSetting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImproveSmsSending()Z
    .locals 1

    .prologue
    .line 3488
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIotProject()Z
    .locals 1

    .prologue
    .line 4015
    const/4 v0, 0x0

    return v0
.end method

.method public static isLanguageFlag(S)Z
    .locals 1
    .parameter "byteLangFlag"

    .prologue
    .line 1020
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNLVF(Ljava/lang/String;)Z
    .locals 3
    .parameter "mccmnc"

    .prologue
    const/4 v0, 0x0

    .line 2944
    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa9

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2946
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 2947
    const-string v1, "20404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2948
    const/4 v0, 0x1

    .line 2952
    :cond_0
    return v0
.end method

.method public static isNeedWriteToSystemSetting()Z
    .locals 5

    .prologue
    .line 1833
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NEED_WRITE_TO_SYSTEM_SETTING"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1836
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "KEY_WRITE_TO_SYSTEM_SETTING"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1837
    .local v0, bFirst:Z
    return v0
.end method

.method public static isNoTruncate()Z
    .locals 2

    .prologue
    .line 3743
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3745
    const/4 v0, 0x1

    .line 3747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotSupportSDCard()Z
    .locals 1

    .prologue
    .line 2175
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimeProject()Z
    .locals 1

    .prologue
    .line 4019
    sget-boolean v0, Lcom/android/mms/MmsApp;->SUPPORT_PRIME:Z

    return v0
.end method

.method public static isProjectFlag(S)Z
    .locals 1
    .parameter "bytePrjFlag"

    .prologue
    .line 1016
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQHDProject()Z
    .locals 2

    .prologue
    .line 3098
    sget-object v0, Lcom/android/mms/MmsApp;->mDisplayWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mDisplayHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_0

    .line 3099
    const/4 v0, 0x1

    .line 3101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isQVGADevice()Z
    .locals 2

    .prologue
    .line 1072
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 1074
    const/4 v0, 0x1

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecipientInputTypeNumber()Z
    .locals 1

    .prologue
    .line 3686
    sget-object v0, Lcom/android/mms/MmsApp;->mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3687
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 3689
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsRecipientInputTypeNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRestrictedMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3917
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSRestrictedMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_mms_restricted_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3919
    const/4 v0, 0x1

    .line 3921
    :cond_0
    return v0
.end method

.method private static isSagaNL(Ljava/lang/String;)Z
    .locals 2
    .parameter "mccmnc"

    .prologue
    .line 2958
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x62

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7b

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2962
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 2963
    const-string v0, "204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2964
    const/4 v0, 0x1

    .line 2968
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSenseLandscape()Z
    .locals 1

    .prologue
    .line 2777
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2778
    const/4 v0, 0x1

    .line 2779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSense_3_0()Z
    .locals 2

    .prologue
    .line 2753
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2754
    const/4 v0, 0x1

    .line 2755
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSense_3_5()Z
    .locals 2

    .prologue
    .line 2759
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2760
    const/4 v0, 0x1

    .line 2761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSense_4_0()Z
    .locals 2

    .prologue
    .line 3719
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4080

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3720
    const/4 v0, 0x1

    .line 3721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowContactPickerIcon()Z
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x1

    return v0
.end method

.method public static isShowMenuShowMe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3407
    sget v3, Lcom/android/mms/MmsApp;->nShowMeListSize:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 3409
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3410
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getShowMeIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3412
    .local v0, activities:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Lcom/android/mms/MmsApp;->nShowMeListSize:I

    .line 3415
    :cond_0
    sget v3, Lcom/android/mms/MmsApp;->nShowMeListSize:I

    if-lez v3, :cond_1

    .line 3416
    const/4 v2, 0x1

    .line 3418
    :cond_1
    return v2
.end method

.method public static isShowSaveasTask(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 3704
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3714
    :goto_0
    return v0

    .line 3707
    :cond_0
    :try_start_0
    const-string v2, "com.htc.task"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 3708
    const-string v2, "Messaging"

    const-string v3, "com.htc.task is existed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3709
    const/4 v0, 0x1

    .local v0, bSaveasTask:Z
    goto :goto_0

    .line 3710
    .end local v0           #bSaveasTask:Z
    :catch_0
    move-exception v1

    .line 3711
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Messaging"

    const-string v3, "com.htc.task is NOT existed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    const/4 v0, 0x0

    .restart local v0       #bSaveasTask:Z
    goto :goto_0
.end method

.method public static isShowingMTMmsbyDeviceTime()Z
    .locals 1

    .prologue
    .line 3775
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x88

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3778
    :cond_1
    const/4 v0, 0x1

    .line 3780
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSignatureDefaultEnable()Z
    .locals 1

    .prologue
    .line 1994
    const/4 v0, 0x0

    return v0
.end method

.method public static isSmsStorageAvailable()Z
    .locals 1

    .prologue
    .line 4032
    sget-boolean v0, Lcom/android/mms/MmsApp;->sSmsStorageAvailable:Z

    return v0
.end method

.method public static isSmscEditable()Z
    .locals 1

    .prologue
    .line 1930
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSMSCEditable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1931
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1933
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSMSCEditable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSpecialSMSpriority()Z
    .locals 2

    .prologue
    .line 2480
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_1

    .line 2483
    const/4 v0, 0x1

    .line 2486
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStorageSettingEnable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1730
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return v0

    .line 1741
    :cond_1
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ff999999999999aL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    .line 1742
    goto :goto_0

    .line 1745
    :catch_0
    move-exception v0

    move v0, v1

    .line 1747
    goto :goto_0
.end method

.method public static isSupport2LayerSetting()Z
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupport3DContent()Z
    .locals 1

    .prologue
    .line 3082
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportAccentConvert()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 2005
    sget-object v5, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    :cond_0
    sget-object v5, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_2

    :cond_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x14

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd4

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x40

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xae

    if-ne v5, v6, :cond_3

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x35

    if-ne v5, v6, :cond_3

    .line 2061
    .local v0, locale:Ljava/util/Locale;
    .local v2, sLocale:Ljava/lang/String;
    :cond_2
    :goto_0
    return v3

    .line 2017
    .end local v0           #locale:Ljava/util/Locale;
    .end local v2           #sLocale:Ljava/lang/String;
    :cond_3
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x34

    if-ne v5, v6, :cond_4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-nez v5, :cond_4

    .line 2019
    const-string v5, "HTC__304"

    sget-object v6, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 2023
    :cond_4
    const-string v5, "VODAP304"

    sget-object v6, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 2027
    sget-object v5, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_2

    :cond_5
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x62

    if-eq v5, v6, :cond_2

    .line 2032
    const-string v5, "ORANG309"

    sget-object v6, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 2033
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 2034
    .local v1, nli:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    move v3, v4

    .line 2035
    goto :goto_0

    .line 2041
    .end local v1           #nli:I
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2043
    .restart local v0       #locale:Ljava/util/Locale;
    if-nez v0, :cond_7

    move v3, v4

    .line 2044
    goto :goto_0

    .line 2046
    :cond_7
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2048
    .restart local v2       #sLocale:Ljava/lang/String;
    if-nez v2, :cond_8

    move v3, v4

    .line 2049
    goto :goto_0

    .line 2051
    :cond_8
    const-string v5, "es_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const-string v5, "es"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2053
    const-string v5, "en_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const-string v5, "en"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2055
    const-string v5, "pt_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const-string v5, "pt"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2057
    const-string v5, "fr_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_2

    const-string v5, "fr"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2061
    goto/16 :goto_0
.end method

.method public static isSupportActionList()Z
    .locals 1

    .prologue
    .line 3345
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3346
    const/4 v0, 0x0

    .line 3348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportAddSlideBefore()Z
    .locals 1

    .prologue
    .line 3446
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportAreaCodeAlarm()Z
    .locals 2

    .prologue
    .line 4073
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 4076
    :cond_0
    const/4 v0, 0x1

    .line 4078
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportAttachLocation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3159
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    .line 3163
    :cond_1
    const/4 v0, 0x0

    .line 3165
    :cond_2
    return v0
.end method

.method public static isSupportAudioOgg()Z
    .locals 2

    .prologue
    .line 897
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 898
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportBackKeyDeleting()Z
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportBackgroundDeletion()Z
    .locals 2

    .prologue
    .line 2157
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2159
    const/4 v0, 0x1

    .line 2161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportBlocklist()Z
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportCMAS()Z
    .locals 4

    .prologue
    .line 2991
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x400c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasInitCmasSupportStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2993
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isSupportCMAS()Z

    move-result v0

    .line 3014
    :goto_0
    return v0

    .line 2995
    :cond_0
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2999
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3014
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCMASSort()Z
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCMDBarEnhance()Z
    .locals 2

    .prologue
    .line 3053
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3058
    :cond_1
    const/4 v0, 0x1

    .line 3059
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCdmaAPN()Z
    .locals 1

    .prologue
    .line 3470
    const/16 v0, 0xad

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3471
    const/4 v0, 0x1

    .line 3473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCdmaMmsConnEditorEditable()Z
    .locals 1

    .prologue
    .line 3204
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCellBroadcast()Z
    .locals 2

    .prologue
    .line 1914
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    .line 1915
    const/4 v0, 0x0

    .line 1917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportCharmNotification()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3649
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charm_indicator_supported"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3652
    :cond_0
    const/4 v0, 0x1

    .line 3654
    :cond_1
    return v0
.end method

.method public static isSupportCheckExistedContactBeforeImportVcard()Z
    .locals 2

    .prologue
    .line 924
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 925
    const/4 v0, 0x1

    .line 927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCheckImageResolution()Z
    .locals 1

    .prologue
    .line 3925
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3929
    :cond_0
    const/4 v0, 0x1

    .line 3931
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportChineseFontSizeEnlarged()Z
    .locals 1

    .prologue
    .line 2973
    const/16 v0, 0x62

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2975
    :cond_0
    const/4 v0, 0x1

    .line 2976
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportClassZeroHyperLink()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2393
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 2399
    :goto_0
    return v0

    .line 2396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2397
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSupportClassZeroSave()Z
    .locals 1

    .prologue
    .line 1886
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportClassZeroSave:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1887
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1889
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportClassZeroSave:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportCmasMoreInfoUI()Z
    .locals 1

    .prologue
    .line 3047
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    return v0
.end method

.method public static isSupportCmasRecycle()Z
    .locals 1

    .prologue
    .line 4026
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4027
    const/4 v0, 0x1

    .line 4029
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCompanyDirectory()Z
    .locals 2

    .prologue
    .line 2681
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2682
    const/4 v0, 0x1

    .line 2683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportComposeMsgActivityPreload()Z
    .locals 1

    .prologue
    .line 3676
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3678
    const/4 v0, 0x1

    .line 3680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportComposeMsgAtTitle()Z
    .locals 1

    .prologue
    .line 2784
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportComposerEnhance()Z
    .locals 1

    .prologue
    .line 2642
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportConcatenatedEmailSms()Z
    .locals 1

    .prologue
    .line 1752
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1753
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1755
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportConcatenatedEmailSms:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportConnectedService()Z
    .locals 1

    .prologue
    .line 2192
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSupportContactBaseConversation()Z
    .locals 2

    .prologue
    .line 889
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 890
    const/4 v0, 0x1

    .line 892
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportConversationViewCache()Z
    .locals 1

    .prologue
    .line 2866
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportConvertToRelatedForSingleFile()Z
    .locals 2

    .prologue
    .line 658
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportCreatePreviewIconInBG()Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDeleteAllMMS()Z
    .locals 2

    .prologue
    .line 3224
    const/16 v0, 0xda

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3227
    const/4 v0, 0x1

    .line 3229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportDeleteWarning()Z
    .locals 1

    .prologue
    .line 2467
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDeletedItems()Z
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportDeviceTimeOut()Z
    .locals 1

    .prologue
    .line 3565
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3566
    const/4 v0, 0x1

    .line 3568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportDeviceTimeOutResize()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3574
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3575
    const/16 v1, 0xa8

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3576
    const/4 v0, 0x1

    .line 3580
    :cond_0
    return v0
.end method

.method public static isSupportDirectCreateGroupRecipient()Z
    .locals 1

    .prologue
    .line 2229
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportDraftsEnhancement()Z
    .locals 4

    .prologue
    .line 781
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 782
    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportEarthquakeAlert()Z
    .locals 1

    .prologue
    .line 4050
    const/16 v0, 0x51

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4051
    const/4 v0, 0x1

    .line 4052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportEmptyDraft()Z
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportEmptyDraft:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 634
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 636
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportEmptyDraft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportEmptySms()Z
    .locals 1

    .prologue
    .line 2095
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportEmptySms:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2096
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 2098
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportEmptySms:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportEmptyTextPar()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEnhancedDrafLoading()Z
    .locals 1

    .prologue
    .line 3116
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3117
    :cond_0
    const/4 v0, 0x1

    .line 3119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportExchangePolicyStatus()Z
    .locals 4

    .prologue
    .line 2838
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 2839
    const/4 v0, 0x1

    .line 2842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportExpandMixedMMS()Z
    .locals 2

    .prologue
    .line 3524
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 3526
    const/4 v0, 0x1

    .line 3528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportExtractMsgBodyCallBackNumber()Z
    .locals 1

    .prologue
    .line 3605
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3606
    const/4 v0, 0x1

    .line 3607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportFillCache()Z
    .locals 1

    .prologue
    .line 625
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportForceDisplaySlidwshow()Z
    .locals 1

    .prologue
    .line 2728
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2729
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 2731
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportForceDisplaySlideshow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportForceRelatedByCheckSmil()Z
    .locals 1

    .prologue
    .line 3556
    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3557
    const/4 v0, 0x1

    .line 3558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportForwardByEmail()Z
    .locals 4

    .prologue
    .line 2436
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 2437
    const/4 v0, 0x1

    .line 2440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportForwardInThreadDetailView()Z
    .locals 4

    .prologue
    .line 2425
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 2426
    const/4 v0, 0x1

    .line 2429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportForwardMsg()Z
    .locals 1

    .prologue
    .line 2183
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConnectedService()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/MmsApp;->m_bSupportForwardMsg:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportFourRoundPhoto()Z
    .locals 1

    .prologue
    .line 2853
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    const/4 v0, 0x1

    .line 2855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportGroupMessage()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 792
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return v0

    .line 794
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff999999999999aL

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 795
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportHWMenuController()Z
    .locals 1

    .prologue
    .line 3455
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportIPv6()Z
    .locals 1

    .prologue
    .line 2610
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaa

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2612
    const/4 v0, 0x1

    .line 2614
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportIgnoreCmas2Mute()Z
    .locals 1

    .prologue
    .line 4065
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4066
    const/4 v0, 0x1

    .line 4067
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportInDetailViewByQucikContact()Z
    .locals 4

    .prologue
    .line 595
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 596
    const/4 v0, 0x1

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportInitwithExceededRecipients()Z
    .locals 1

    .prologue
    .line 3856
    const/16 v0, 0x7e

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3857
    const/4 v0, 0x0

    .line 3859
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportInternalStorage()Z
    .locals 1

    .prologue
    .line 1999
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v0

    return v0
.end method

.method public static isSupportLandscapeIMEbutton()Z
    .locals 4

    .prologue
    .line 581
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 582
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLargeFontSize()Z
    .locals 1

    .prologue
    .line 3600
    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportLargeSlidesCache(I)Z
    .locals 1
    .parameter "count"

    .prologue
    .line 2631
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportLoadAnimation()Z
    .locals 2

    .prologue
    .line 3335
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3338
    :cond_0
    const/4 v0, 0x1

    .line 3340
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLocationMessage()Z
    .locals 1

    .prologue
    .line 3550
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVzwNGM()Z

    move-result v0

    return v0
.end method

.method public static isSupportLocationOfAddress()Z
    .locals 1

    .prologue
    .line 4091
    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4092
    const/4 v0, 0x1

    .line 4094
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportMMSDeliveryReport()Z
    .locals 1

    .prologue
    .line 1052
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1053
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1055
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSDeliveryReport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportMMSPriority()Z
    .locals 1

    .prologue
    .line 1064
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSPriority:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1065
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1067
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSPriority:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportMMSReadReport()Z
    .locals 1

    .prologue
    .line 1037
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSReadReport:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1038
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1040
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSReadReport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportMMSRestrictedMode()Z
    .locals 1

    .prologue
    .line 3901
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3902
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 3904
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSRestrictedMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportMMSShowSize()Z
    .locals 1

    .prologue
    .line 3397
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    const/4 v0, 0x1

    .line 3400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportMarkAllAsRead()Z
    .locals 1

    .prologue
    .line 2765
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    return v0
.end method

.method public static isSupportMergeLayout()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2772
    const/16 v0, 0x7e

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2774
    :cond_0
    return v1
.end method

.method public static isSupportMessagePreview()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 440
    const/4 v0, -0x1

    .line 441
    .local v0, PreviewLine:I
    const/4 v1, 0x0

    .line 443
    .local v1, mSize:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms_preferences"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 446
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 448
    const-string v4, "pref_key_msg_preview"

    const-string v5, "1"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 452
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x4040

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    if-lez v0, :cond_1

    .line 453
    const/4 v3, 0x1

    .line 455
    :cond_1
    return v3
.end method

.method public static isSupportMessagePreview(Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "sp"

    .prologue
    .line 461
    const/4 v0, -0x1

    .line 462
    .local v0, PreviewLine:I
    const/4 v1, 0x0

    .line 464
    .local v1, mSize:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 466
    const-string v2, "pref_key_msg_preview"

    const-string v3, "1"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 470
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x4040

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    if-lez v0, :cond_1

    .line 471
    const/4 v2, 0x1

    .line 473
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportMms()Z
    .locals 1

    .prologue
    .line 1766
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMMSFlag:Z

    return v0
.end method

.method public static isSupportMmsCallback()Z
    .locals 2

    .prologue
    .line 709
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 710
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 711
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 712
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportMMSCallbackNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 714
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportMmsCollapseMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3126
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyDisplayMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3128
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3129
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_displaymode"

    const-string v5, "Expand"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3130
    .local v1, strDisplaymode:Ljava/lang/String;
    const-string v4, "Expand"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 3144
    .end local v0           #sp:Landroid/content/SharedPreferences;
    .end local v1           #strDisplaymode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #sp:Landroid/content/SharedPreferences;
    .restart local v1       #strDisplaymode:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 3136
    goto :goto_0

    .line 3141
    .end local v0           #sp:Landroid/content/SharedPreferences;
    .end local v1           #strDisplaymode:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    const v5, 0x40066666

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    .line 3144
    goto :goto_0
.end method

.method public static isSupportMultiTouchTextSizeChange()Z
    .locals 1

    .prologue
    .line 3594
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportNGMGroupMessage()Z
    .locals 1

    .prologue
    .line 3364
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVzwNGM()Z

    move-result v0

    return v0
.end method

.method public static isSupportNotificationEnhancement()Z
    .locals 1

    .prologue
    .line 2405
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportNotificationPreview()Z
    .locals 1

    .prologue
    .line 3614
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3615
    const/4 v0, 0x1

    .line 3617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportNotifyRoamingDialog()Z
    .locals 4

    .prologue
    .line 553
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOnlineAlbum()Z
    .locals 2

    .prologue
    .line 1921
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    const/4 v0, 0x1

    .line 1925
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOverlapRelayout()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1901
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1909
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPacketSms()Z
    .locals 1

    .prologue
    .line 3426
    const/16 v0, 0x51

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPduHeaderBuffer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3637
    const/16 v1, 0xda

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3642
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPhoneStorage()Z
    .locals 1

    .prologue
    .line 2167
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPostSpellingCheck()Z
    .locals 2

    .prologue
    .line 2647
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    const/16 v0, 0x61

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa9

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaa

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2651
    :cond_0
    const/4 v0, 0x1

    .line 2653
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportProxySetByNAI()Z
    .locals 1

    .prologue
    .line 3187
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3190
    :cond_0
    const/4 v0, 0x1

    .line 3193
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportRecipientListEnhance()Z
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportRelatedVcardAndVcal()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportRemoveRedundantFrom()Z
    .locals 1

    .prologue
    .line 3877
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportReplyAll()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportReplyNumberIndicator()Z
    .locals 1

    .prologue
    .line 3734
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3735
    const/4 v0, 0x0

    .line 3737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportReportNotification()Z
    .locals 1

    .prologue
    .line 607
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSIEUseSignature()Z
    .locals 4

    .prologue
    .line 2982
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x400c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 2983
    const/4 v0, 0x1

    .line 2985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSMS2Email()Z
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportSMS2Email:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 752
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 754
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportSMS2Email:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportSMSDeliverReport()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 993
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    :cond_1
    move v0, v1

    .line 1007
    :cond_2
    :goto_0
    return v0

    .line 999
    :cond_3
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_2

    .line 1000
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1003
    goto :goto_0
.end method

.method public static isSupportSMSPriority()Z
    .locals 4

    .prologue
    .line 719
    sget-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 720
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 724
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 726
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 731
    .local v0, phoneType:I
    sget-object v2, Lcom/android/mms/MmsApp;->mIsSupportSMSPriority:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportSMSSubject()Z
    .locals 1

    .prologue
    .line 1785
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportSMSSubject:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1786
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1788
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportSMSSubject:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportSearchInMenu()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 510
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    .line 519
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSecureFolder()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 311
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xda

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4040

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    .line 322
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSelectAllOnTop()Z
    .locals 1

    .prologue
    .line 3725
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_4_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3726
    const/4 v0, 0x1

    .line 3728
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSendPendingUnderNoNetwork()Z
    .locals 1

    .prologue
    .line 2449
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSendUnderMobileNetworkUnChecked()Z
    .locals 2

    .prologue
    .line 2458
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 2459
    const/4 v0, 0x0

    .line 2462
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSendVCardBySms()Z
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSenderInformation()Z
    .locals 2

    .prologue
    .line 369
    const/16 v0, 0xda

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSense35BubbleRule()Z
    .locals 1

    .prologue
    .line 3539
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSentSmsErrorCodeHandling()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3494
    const/16 v4, 0xa8

    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3505
    .local v0, isAsiaChs:Z
    .local v1, isCT:Z
    :cond_0
    :goto_0
    return v2

    .line 3496
    .end local v0           #isAsiaChs:Z
    .end local v1           #isCT:Z
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 3498
    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 3500
    .restart local v0       #isAsiaChs:Z
    :goto_1
    const/16 v4, 0xd8

    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    .line 3501
    .restart local v1       #isCT:Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v2, v3

    .line 3505
    goto :goto_0

    .end local v0           #isAsiaChs:Z
    .end local v1           #isCT:Z
    :cond_3
    move v0, v3

    .line 3498
    goto :goto_1
.end method

.method public static isSupportSeparateGroupSms()Z
    .locals 2

    .prologue
    .line 3326
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 3327
    const/4 v0, 0x1

    .line 3329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportShareToFB()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3386
    const/16 v1, 0x42

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3391
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportShortCutForHWKey()Z
    .locals 1

    .prologue
    .line 2829
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2831
    :cond_1
    const/4 v0, 0x1

    .line 2832
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportShowBccRecipientStatus()Z
    .locals 1

    .prologue
    .line 3381
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v0

    return v0
.end method

.method public static isSupportShowControllerAtStart()Z
    .locals 1

    .prologue
    .line 3461
    const/16 v0, 0xda

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3462
    const/4 v0, 0x1

    .line 3464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportShowNumberInDetailView()Z
    .locals 4

    .prologue
    .line 570
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSignature()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1963
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1985
    .local v0, bSupportSignature:Z
    :cond_0
    :goto_0
    return v2

    .line 1967
    .end local v0           #bSupportSignature:Z
    :cond_1
    const/4 v0, 0x0

    .line 1968
    .restart local v0       #bSupportSignature:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSIEUseSignature()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1969
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms.customizationBySIM"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1974
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v4, "MSG_Signature_Show"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1978
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x1b

    if-eq v4, v5, :cond_4

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v3, :cond_3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-eq v4, v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x4040

    cmpl-float v4, v4, v5

    if-gez v4, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    move v2, v3

    .line 1983
    goto :goto_0
.end method

.method public static isSupportSimSms()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2590
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2600
    :cond_0
    :goto_0
    return v0

    .line 2592
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2593
    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x61

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9d

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2600
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSimSmsAutoSync()Z
    .locals 1

    .prologue
    .line 2605
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    return v0
.end method

.method public static isSupportSmsBackup()Z
    .locals 2

    .prologue
    .line 668
    sget-object v0, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    new-instance v1, Lcom/android/mms/MmsApp$1;

    invoke-direct {v1}, Lcom/android/mms/MmsApp$1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/mms/util/CustomizeProvider;->register(Landroid/content/Context;Lcom/android/mms/util/CustomizeProvider$CustomizeHelper;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSmsCallback()Z
    .locals 2

    .prologue
    .line 687
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 688
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 689
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 690
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportSMSCallbackNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 692
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSmsEmailAddress()Z
    .locals 1

    .prologue
    .line 910
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v0

    return v0
.end method

.method public static isSupportSmsPrivacyInd()Z
    .locals 1

    .prologue
    .line 3627
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3629
    const/4 v0, 0x1

    .line 3631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSmsSetting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3432
    const/16 v1, 0x51

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3433
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 3438
    :cond_0
    :goto_0
    return v0

    .line 3436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSortByDeviceTime()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3786
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4080

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 3793
    :cond_0
    :goto_0
    return v0

    .line 3787
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4060

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 3788
    const/16 v1, 0x8a

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3793
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSortConversation()Z
    .locals 2

    .prologue
    .line 3769
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4080

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3770
    const/4 v0, 0x1

    .line 3771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSoundSetPicker()Z
    .locals 1

    .prologue
    .line 2150
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSprintRoamingGuide()Z
    .locals 2

    .prologue
    .line 3479
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 3480
    const/4 v0, 0x1

    .line 3482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSystemTextSize()Z
    .locals 1

    .prologue
    .line 815
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_4_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    const/4 v0, 0x1

    .line 818
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportTextAttachment()Z
    .locals 1

    .prologue
    .line 2707
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2708
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 2710
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportShowAllTextAttachment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportTextSelection()Z
    .locals 1

    .prologue
    .line 2179
    sget-boolean v0, Lcom/android/mms/MmsApp;->m_bSupportTextSelection:Z

    return v0
.end method

.method public static isSupportTextSizeChange()Z
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 537
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportTextSizeMenuInConversation()Z
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x1

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportTextSizeMenuInNewComposer()Z
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const/4 v0, 0x1

    .line 827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportThreadDetailBubbleStyle()Z
    .locals 1

    .prologue
    .line 2768
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportThreadDetailTitleEnhance()Z
    .locals 1

    .prologue
    .line 2848
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportThreadDetailViewEnhance()Z
    .locals 2

    .prologue
    .line 2620
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2621
    const/4 v0, 0x1

    .line 2623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportThumbCache()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportTimestampIndicator()Z
    .locals 1

    .prologue
    .line 3169
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3170
    const/4 v0, 0x1

    .line 3179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportTraditionMode()Z
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportUnreadCountCountTitle()Z
    .locals 1

    .prologue
    .line 1772
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    const/4 v0, 0x0

    .line 1775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportUsingCID()Z
    .locals 2

    .prologue
    .line 2690
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/MmsApp;->mCarrierID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_2

    :cond_1
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x30

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xaf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    const-string v1, "UTSI_043"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xdf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2700
    :cond_2
    const/4 v0, 0x0

    .line 2701
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportVCardContactType()Z
    .locals 1

    .prologue
    .line 2188
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportVT()Z
    .locals 2

    .prologue
    .line 3088
    const/16 v0, 0xda

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3091
    const/4 v0, 0x1

    .line 3093
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVVMCharmNotification()Z
    .locals 1

    .prologue
    .line 3658
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCharmNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3659
    const/4 v0, 0x1

    .line 3661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVVMTab()Z
    .locals 2

    .prologue
    .line 916
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 917
    const/4 v0, 0x1

    .line 919
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVzwNGM()Z
    .locals 1

    .prologue
    .line 3368
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x61

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaa

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3373
    const/4 v0, 0x1

    .line 3376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportWapPush()Z
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportWapPush:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 398
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsSupportWapPush:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportYTLAP()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3866
    const/16 v1, 0x88

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3871
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportpreloadMMStoCache()Z
    .locals 2

    .prologue
    .line 4004
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    .line 4005
    const/4 v0, 0x0

    .line 4007
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportyDisplayMode()Z
    .locals 2

    .prologue
    .line 3150
    invoke-static {}, Lcom/android/mms/MmsApp;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3153
    const/4 v0, 0x1

    .line 3155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportyMMSPlayMode()Z
    .locals 2

    .prologue
    .line 3211
    const/16 v0, 0xda

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3214
    const/4 v0, 0x1

    .line 3216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeable()Z
    .locals 1

    .prologue
    .line 1801
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    const/4 v0, 0x1

    .line 1804
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicodeSubjectLengthShortened()Z
    .locals 1

    .prologue
    .line 2792
    const/16 v0, 0xda

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x50

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2794
    :cond_0
    const/4 v0, 0x1

    .line 2796
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseDeviceTime()Z
    .locals 1

    .prologue
    .line 2117
    sget-object v0, Lcom/android/mms/MmsApp;->mIsUseDeviceTime:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2118
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 2120
    :cond_0
    sget-object v0, Lcom/android/mms/MmsApp;->mIsUseDeviceTime:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isVeryFirstExecute()Z
    .locals 5

    .prologue
    .line 1811
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "VERY_FIRST_EXECUTE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1814
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "KEY_VERY_FIRST_EXECUTE"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1816
    .local v0, bFirst:Z
    return v0
.end method

.method public static isWVGADevice()Z
    .locals 2

    .prologue
    .line 973
    sget-object v0, Lcom/android/mms/MmsApp;->mDisplayWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mDisplayHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x320

    if-ne v0, v1, :cond_0

    .line 974
    const/4 v0, 0x1

    .line 976
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWorldPhone()Z
    .locals 2

    .prologue
    .line 982
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 984
    const/4 v0, 0x1

    .line 986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultMMSSlideDuration()V
    .locals 1

    .prologue
    .line 2374
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsApp;->MMS_DEFAULT_SLIDE_DURATION:I

    .line 2375
    return-void
.end method

.method public static setMMSRetryPolicy(Ljava/lang/String;)V
    .locals 2
    .parameter "MMS_RP"

    .prologue
    .line 2291
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2292
    .local v0, retry_policy:[Ljava/lang/String;
    sput-object p0, Lcom/android/mms/MmsApp;->MMS_RETRY_POLICY:Ljava/lang/String;

    .line 2293
    sput-object v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->retry_policy:[Ljava/lang/String;

    .line 2294
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/mms/transaction/Transaction$RetryPolicy;->maxRetryCount:I

    .line 2295
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/mms/transaction/Transaction$RetryPolicy;->maxRetryInterval:I

    .line 2296
    return-void
.end method

.method public static setMMSSlideDuration(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 2386
    sput p0, Lcom/android/mms/MmsApp;->MMS_DEFAULT_SLIDE_DURATION:I

    .line 2387
    return-void
.end method

.method public static setMaxMMSRecipientNumber(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 2286
    sput p0, Lcom/android/mms/MmsApp;->MMS_MAX_RECIPIENT_NUMBER:I

    .line 2287
    return-void
.end method

.method public static setMaxMMSSlideNumber(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 2370
    sput p0, Lcom/android/mms/MmsApp;->MMS_MAX_SLIDE_NUMBER:I

    .line 2371
    return-void
.end method

.method public static setMaxSMSConcatenatedNumber(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 2346
    sput p0, Lcom/android/mms/MmsApp;->SMS_MAX_CONCATENATED_NUMBER:I

    .line 2347
    return-void
.end method

.method public static setMaxSMSRecipientNumber(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 2243
    sput p0, Lcom/android/mms/MmsApp;->SMS_MAX_RECIPIENT_NUMBER:I

    .line 2244
    return-void
.end method

.method public static declared-synchronized setNewIncomingMsgCount(I)V
    .locals 7
    .parameter "count"

    .prologue
    .line 2539
    const-class v3, Lcom/android/mms/MmsApp;

    monitor-enter v3

    :try_start_0
    const-string v2, "Messaging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNewIncomingMsgCount> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.android.mms.shared_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2543
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p0, :cond_0

    .line 2545
    const-string v2, "clear_shortcut_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2547
    const-string v2, "Messaging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAR_SHORTCUT_COUNT time> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_0
    sget v2, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p0, :cond_1

    .line 2554
    :goto_0
    monitor-exit v3

    return-void

    .line 2551
    :cond_1
    :try_start_1
    sput p0, Lcom/android/mms/MmsApp;->mNewInconmingMsgCount:I

    .line 2552
    const-string v2, "pref_key_new_incoming_count"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2539
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static setSmsManagerClass()V
    .locals 4

    .prologue
    .line 1157
    :try_start_0
    const-string v1, "android.telephony.SmsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsApp;->mSmsManagerClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1167
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    sget-object v1, Lcom/android/mms/MmsApp;->mSmsManagerClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 1169
    :try_start_1
    sget-object v1, Lcom/android/mms/MmsApp;->mSmsManagerClass:Ljava/lang/Class;

    const-string v2, "getCarrierID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsApp;->m_getCarrierID:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1174
    :cond_0
    :goto_1
    return-void

    .line 1158
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 1159
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const-string v1, "Messaging"

    const-string v2, "android.telephony.SmsManager not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 1161
    .local v0, e:Ljava/lang/LinkageError;
    const-string v1, "Messaging"

    const-string v2, "android.telephony.SmsManager linkage error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1162
    .end local v0           #e:Ljava/lang/LinkageError;
    :catch_2
    move-exception v0

    .line 1163
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Messaging"

    const-string v2, "android.telephony.SmsManager Class.forName exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1170
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 1171
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Messaging"

    const-string v2, "unable to get SmsManager method: getCarrierID()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setSmsStorageAvailable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 4035
    sput-boolean p0, Lcom/android/mms/MmsApp;->sSmsStorageAvailable:Z

    .line 4036
    return-void
.end method

.method public static showTestCmasSettingInEngMode()Z
    .locals 1

    .prologue
    .line 4056
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4057
    const/4 v0, 0x1

    .line 4060
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportBrightScreenOnNewSMS()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_sms_screen_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized syncCdmaCmasSharedPreference()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 3274
    const-class v7, Lcom/android/mms/MmsApp;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v8, v8, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-lez v8, :cond_3

    .line 3275
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3276
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3277
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v8, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v8, v8, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-ge v2, v8, :cond_2

    .line 3279
    sget-object v8, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v8, v8, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    aget v4, v8, v2

    .line 3280
    .local v4, servId:I
    sget-object v8, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v8, v8, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    aget v8, v8, v2

    if-ne v8, v6, :cond_1

    move v1, v6

    .line 3281
    .local v1, enable:Z
    :goto_1
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCmasPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    .line 3282
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3283
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "put key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3287
    :cond_0
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "service_id["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->language:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alert["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->alert:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "max_messages["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->max_messages:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "label_encode["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->label_encode:[I

    aget v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    const-string v8, "Messaging"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "label["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v10, v10, Lcom/android/mms/MmsApp$CmasSeriveTable;->label:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3280
    .end local v1           #enable:Z
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 3296
    .end local v4           #servId:I
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3298
    :cond_3
    monitor-exit v7

    return-void

    .line 3274
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static syncCmasServiceTable()V
    .locals 4

    .prologue
    .line 3303
    const-string v2, "Messaging"

    const-string v3, "sync CMAS service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 3305
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v1}, Landroid/telephony/SmsManager;->syncCmasServiceTable()Landroid/os/Bundle;

    move-result-object v0

    .line 3306
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 3307
    const-string v2, "Messaging"

    const-string v3, "sync service table fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :goto_0
    return-void

    .line 3310
    :cond_0
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "service_number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    .line 3311
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "service_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    .line 3312
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "language"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->language:[I

    .line 3313
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "select"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    .line 3314
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "alert"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->alert:[I

    .line 3315
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "max_messages"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->max_messages:[I

    .line 3316
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "label_encode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->label_encode:[I

    .line 3317
    sget-object v2, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v3, "label"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/mms/MmsApp$CmasSeriveTable;->label:[Ljava/lang/String;

    .line 3319
    invoke-static {}, Lcom/android/mms/MmsApp;->syncCdmaCmasSharedPreference()V

    goto :goto_0
.end method

.method public static syncCmasServiceTable(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 3253
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3254
    const-string v0, "Messaging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync CMAS service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3256
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-nez v0, :cond_1

    .line 3257
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/MmsApp$5;

    invoke-direct {v1, p0}, Lcom/android/mms/MmsApp$5;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3269
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1523
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1524
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/util/ViewCache;->resetAll(Landroid/content/res/Configuration;)V

    .line 1525
    return-void
.end method

.method public onCreate()V
    .locals 17

    .prologue
    .line 1264
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 1265
    const-string v13, "Mms"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "Mms"

    const-string v14, "MmsApp onCreate: "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    sput-object p0, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    .line 1274
    new-instance v13, Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;

    invoke-direct {v13}, Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;-><init>()V

    sput-object v13, Lcom/android/mms/transaction/SmsReceiverService;->sPhoneStateListener:Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;

    .line 1279
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/mms/MmsApp$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/MmsApp$3;-><init>(Lcom/android/mms/MmsApp;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1308
    sget-object v13, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sput-object v13, Lcom/android/mms/MmsApp;->mDisplayWidth:Ljava/lang/Integer;

    .line 1309
    sget-object v13, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sput-object v13, Lcom/android/mms/MmsApp;->mDisplayHeight:Ljava/lang/Integer;

    .line 1314
    invoke-static/range {p0 .. p0}, Lcom/android/mms/category/PasswordManager;->init(Landroid/content/Context;)V

    .line 1317
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1318
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v13, "com.android.mms_preferences_old"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/android/mms/MmsApp;->SaveOldPreferenceXml(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Lcom/android/mms/MmsApp;->has_set_default_value:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1323
    .local v9, prefs_HasSet:Landroid/content/SharedPreferences;
    const-string v13, "_has_set_default_values_2"

    const/4 v14, 0x0

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1324
    .local v2, has_set_default_values_2:Z
    const-string v13, "Messaging"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_has_set_default_values_2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-static {}, Lcom/android/mms/MmsApp;->UpdateFOTADataFormat()V

    .line 1328
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v14, 0x2

    if-ne v13, v14, :cond_12

    .line 1329
    if-nez v2, :cond_1

    .line 1330
    const v13, 0x7f040015

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1343
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1344
    if-nez v2, :cond_2

    .line 1345
    const v13, 0x7f040013

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1347
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1348
    if-nez v2, :cond_3

    .line 1349
    const v13, 0x7f04000a

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1352
    :cond_3
    const/4 v12, 0x0

    .line 1353
    .local v12, splocal:Landroid/content/SharedPreferences;
    const-string v13, "com.android.mms.customizationBySIM"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1354
    const/4 v1, 0x0

    .line 1355
    .local v1, bCustomizeInitialed:Z
    if-eqz v12, :cond_4

    .line 1356
    const-string v13, "Finished_General_Customize"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1357
    :cond_4
    if-eqz v1, :cond_5

    .line 1360
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1361
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v13, "pref_key_msg_preview"

    const-string v14, "1"

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1362
    .local v3, mSize:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    .line 1366
    .end local v1           #bCustomizeInitialed:Z
    .end local v3           #mSize:Ljava/lang/String;
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    .end local v12           #splocal:Landroid/content/SharedPreferences;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRecipientListEnhance()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1367
    if-nez v2, :cond_6

    .line 1368
    const v13, 0x7f04000f

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1370
    :cond_6
    if-nez v2, :cond_7

    .line 1371
    const v13, 0x7f040009

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1372
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1373
    if-nez v2, :cond_8

    .line 1374
    const v13, 0x7f040018

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1377
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1378
    if-nez v2, :cond_9

    .line 1379
    const v13, 0x7f040010

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1382
    :cond_9
    if-nez v2, :cond_a

    .line 1383
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1384
    .local v10, prefs_HasSetEdit:Landroid/content/SharedPreferences$Editor;
    const-string v13, "_has_set_default_values_2"

    const/4 v14, 0x1

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1385
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1386
    const-string v13, "Messaging"

    const-string v14, "_has_set_default_values_2 apply done"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    .end local v10           #prefs_HasSetEdit:Landroid/content/SharedPreferences$Editor;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportyDisplayMode()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1391
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1392
    .local v11, sp:Landroid/content/SharedPreferences;
    const-string v13, "pref_key_mms_displaymode_default"

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1394
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1395
    .local v6, preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v13, "pref_key_mms_displaymode"

    const-string v14, "Collapse"

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1396
    const-string v13, "pref_key_mms_displaymode_default"

    const/4 v14, 0x1

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1397
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1402
    .end local v6           #preEdt:Landroid/content/SharedPreferences$Editor;
    .end local v11           #sp:Landroid/content/SharedPreferences;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeChange()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1403
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TextSizeManager;->init(Landroid/content/Context;)V

    .line 1405
    :cond_c
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    .line 1409
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/android/mms/MmsApp;->isSignatureDefaultEnable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1410
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v13

    const-string v14, "com.android.mms_preferences"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1411
    .local v4, mms_sp:Landroid/content/SharedPreferences;
    const-string v13, "pref_key_signature_enabled"

    invoke-interface {v4, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1412
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "pref_key_signature_enabled"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1417
    .end local v4           #mms_sp:Landroid/content/SharedPreferences;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1418
    const-string v13, "pref_key_attachment_storage_setting"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/util/MsgPreferenceUtils;->updateOnlyOneAttachmentStorageSetting(Ljava/lang/String;Landroid/content/Context;)V

    .line 1419
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1420
    const-string v13, "pref_key_vvm_archive_storage"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/util/MsgPreferenceUtils;->updateOnlyOneAttachmentStorageSetting(Ljava/lang/String;Landroid/content/Context;)V

    .line 1425
    :cond_e
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    .line 1428
    invoke-static {}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 1429
    invoke-static {}, Lcom/android/mms/MmsApp;->initSimOperatorData()V

    .line 1433
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x400c

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_f

    .line 1434
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1438
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v13

    if-nez v13, :cond_10

    .line 1439
    invoke-static {}, Lcom/android/mms/MmsApp;->initCarrierID()V

    .line 1442
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 1443
    invoke-static {}, Lcom/android/mms/ui/ConversationListBaseAdapter;->createConversationCacheView()V

    .line 1445
    invoke-static {}, Lcom/android/mms/util/RoamingGuideHelper;->getInstance()Lcom/android/mms/util/RoamingGuideHelper;

    .line 1450
    new-instance v5, Lcom/android/mms/MmsApp$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/MmsApp$4;-><init>(Lcom/android/mms/MmsApp;)V

    .line 1468
    .local v5, pl:Ljava/lang/Runnable;
    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 1472
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCmasRecycle()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1473
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 1476
    :cond_11
    return-void

    .line 1333
    .end local v5           #pl:Ljava/lang/Runnable;
    :cond_12
    if-nez v2, :cond_13

    .line 1334
    const v13, 0x7f040014

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1335
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1336
    if-nez v2, :cond_1

    .line 1337
    const v13, 0x7f040018

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1481
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 1482
    const-string v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms"

    const-string v3, "MmsApp onTerminate: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 1484
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->clearTempParts(Landroid/content/Context;)V

    .line 1485
    invoke-static {p0}, Lcom/android/mms/util/ContactNameCache;->close(Landroid/content/Context;)V

    .line 1488
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v1

    .line 1489
    .local v1, contactInfoCache:Lcom/android/mms/util/ContactInfoCache;
    if-eqz v1, :cond_1

    .line 1490
    invoke-virtual {v1}, Lcom/android/mms/util/ContactInfoCache;->close()V

    .line 1495
    :cond_1
    sget-boolean v2, Lcom/android/mms/MmsApp$Customize;->Emerald:Z

    if-eqz v2, :cond_2

    .line 1496
    const-string v2, "Messaging"

    const-string v3, "Release Lockscreen connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    sget-object v2, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    if-eqz v2, :cond_2

    .line 1498
    sget-object v2, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {v2}, Lcom/htc/lockscreen/HtcLSViewConnection;->unReigister()V

    .line 1499
    sput-object v4, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    .line 1505
    :cond_2
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v0

    .line 1507
    .local v0, cache:Lcom/android/mms/util/VCardSaveIndicatorCache;
    if-eqz v0, :cond_3

    .line 1508
    invoke-virtual {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->updateSavedFile()V

    .line 1511
    :cond_3
    sput-object v4, Lcom/android/mms/MmsApp;->mAppObj:Landroid/content/Context;

    .line 1514
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCmasRecycle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1515
    invoke-static {p0}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 1518
    :cond_4
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1139
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    .line 1140
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1141
    new-instance v1, Lcom/android/mms/MmsApp$ShowToastTask;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/MmsApp$ShowToastTask;-><init>(Lcom/android/mms/MmsApp;Ljava/lang/String;)V

    .line 1142
    .local v1, task:Lcom/android/mms/MmsApp$ShowToastTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp$ShowToastTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1144
    .end local v1           #task:Lcom/android/mms/MmsApp$ShowToastTask;
    :cond_0
    return-void
.end method
