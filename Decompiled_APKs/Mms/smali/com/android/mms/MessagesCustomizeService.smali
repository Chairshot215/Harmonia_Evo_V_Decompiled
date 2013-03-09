.class public Lcom/android/mms/MessagesCustomizeService;
.super Landroid/app/Service;
.source "MessagesCustomizeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/MessagesCustomizeService$ServiceHandler;,
        Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;
    }
.end annotation


# static fields
.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.sdm.provider.SDMProvider"

.field public static final CUSTOMER_ITEM_CMAS_SUPPORT:Ljava/lang/String; = "MSG_General_CMAS_Support"

.field public static final CUSTOMER_ITEM_MMS_AR:Ljava/lang/String; = "MMS_Auto_Retrieve"

.field public static final CUSTOMER_ITEM_MMS_CALLBACK_NUMBER:Ljava/lang/String; = "MMS_Callback_Number"

.field public static final CUSTOMER_ITEM_MMS_DR:Ljava/lang/String; = "MMS_Delivery_Report"

.field public static final CUSTOMER_ITEM_MMS_DSD:Ljava/lang/String; = "MMS_Default_Slide_Duration"

.field public static final CUSTOMER_ITEM_MMS_FN:Ljava/lang/String; = "MMS_Fail_Notify"

.field public static final CUSTOMER_ITEM_MMS_FORCE_DISPLAY_SLIDESHOW:Ljava/lang/String; = "MMS_Force_Display_In_Slideshow"

.field public static final CUSTOMER_ITEM_MMS_MRN:Ljava/lang/String; = "MMS_Max_Recipient_Number"

.field public static final CUSTOMER_ITEM_MMS_MSN:Ljava/lang/String; = "MMS_Max_Slide_Number"

.field public static final CUSTOMER_ITEM_MMS_NS:Ljava/lang/String; = "MMS_Notify_Sound"

.field public static final CUSTOMER_ITEM_MMS_PN:Ljava/lang/String; = "MMS_Play_Notify"

.field public static final CUSTOMER_ITEM_MMS_PRI:Ljava/lang/String; = "MMS_Priority"

.field public static final CUSTOMER_ITEM_MMS_PRN:Ljava/lang/String; = "MMS_Play_Received_Notify"

.field public static final CUSTOMER_ITEM_MMS_RAR:Ljava/lang/String; = "MMS_Roaming_Auto_Retrieve"

.field public static final CUSTOMER_ITEM_MMS_RM:Ljava/lang/String; = "MMS_Show_Restricted_Mode"

.field public static final CUSTOMER_ITEM_MMS_RN:Ljava/lang/String; = "MMS_Received_Notify"

.field public static final CUSTOMER_ITEM_MMS_RNS:Ljava/lang/String; = "MMS_Received_Notify_sound"

.field public static final CUSTOMER_ITEM_MMS_RP:Ljava/lang/String; = "MMS_Retry_Policy"

.field public static final CUSTOMER_ITEM_MMS_RR:Ljava/lang/String; = "MMS_Read_Report"

.field public static final CUSTOMER_ITEM_MMS_RV:Ljava/lang/String; = "MMS_Received_Viberation"

.field public static final CUSTOMER_ITEM_MMS_SHOW_ALL_TEXT:Ljava/lang/String; = "MMS_Show_All_Mixed_Text"

.field public static final CUSTOMER_ITEM_MMS_SHOW_CONNECTION_SETTING:Ljava/lang/String; = "MMS_Show_Connection_Setting"

.field public static final CUSTOMER_ITEM_MMS_SIZE1:Ljava/lang/String; = "MMS_Msg_Size1"

.field public static final CUSTOMER_ITEM_MMS_SIZE2:Ljava/lang/String; = "MMS_Msg_Size2"

.field public static final CUSTOMER_ITEM_MMS_SIZE3:Ljava/lang/String; = "MMS_Msg_Size3"

.field public static final CUSTOMER_ITEM_MMS_SIZE_CHOOSE:Ljava/lang/String; = "MMS_Msg_Size_Choose"

.field public static final CUSTOMER_ITEM_MMS_SN:Ljava/lang/String; = "MMS_Sent_Notify"

.field public static final CUSTOMER_ITEM_MMS_V:Ljava/lang/String; = "MMS_Viberation"

.field public static final CUSTOMER_ITEM_MSG_PRVL:Ljava/lang/String; = "MSG_Preview_Line"

.field public static final CUSTOMER_ITEM_NEW_MSG_NOFIY_RULE_KEY:Ljava/lang/String; = "MSG_new_msg_notify_rule_key"

.field public static final CUSTOMER_ITEM_NTY_DISPLAYONSCREEN:Ljava/lang/String; = "Display_message_on_screen"

.field public static final CUSTOMER_ITEM_RECIPT_ITN:Ljava/lang/String; = "RECIPT_Input_Type_Number"

.field public static final CUSTOMER_ITEM_RECIPT_SCH:Ljava/lang/String; = "RECIPT_Show_Call_History"

.field public static final CUSTOMER_ITEM_RECIPT_SEA:Ljava/lang/String; = "RECIPT_Show_Email_Address"

.field public static final CUSTOMER_ITEM_RECIPT_SSMMH:Ljava/lang/String; = "RECIPT_Show_Sent_Msg_History"

.field public static final CUSTOMER_ITEM_SIGNATURE_SHOW:Ljava/lang/String; = "MSG_Signature_Show"

.field public static final CUSTOMER_ITEM_SIGNATURE_TEXT:Ljava/lang/String; = "Signature_Text"

.field public static final CUSTOMER_ITEM_SMS_CALLBACK_NUMBER:Ljava/lang/String; = "SMS_Callback_Number"

.field public static final CUSTOMER_ITEM_SMS_CHARACTERS:Ljava/lang/String; = "SMS_Characters"

.field public static final CUSTOMER_ITEM_SMS_CLASS_ZERO_SAVE_SUPPORT:Ljava/lang/String; = "SMS_Class_Zero_Save_Support"

.field public static final CUSTOMER_ITEM_SMS_CONCATENATED_EMAIL_SMS:Ljava/lang/String; = "SMS_Concatenated_Email_SMS"

.field public static final CUSTOMER_ITEM_SMS_DR:Ljava/lang/String; = "SMS_Delivery_Report"

.field public static final CUSTOMER_ITEM_SMS_EMAIL_SERVER_NUMBER:Ljava/lang/String; = "SMS_Email_Server_Number"

.field public static final CUSTOMER_ITEM_SMS_EMPTY_DRAFT_SUPPORT:Ljava/lang/String; = "SMS_Empty_Draft_Support"

.field public static final CUSTOMER_ITEM_SMS_EMPTY_SMS_SUPPORT:Ljava/lang/String; = "SMS_Empty_SMS_Support"

.field public static final CUSTOMER_ITEM_SMS_HIGH_PRIORITY:Ljava/lang/String; = "SMS_High_Priority"

.field public static final CUSTOMER_ITEM_SMS_MCN:Ljava/lang/String; = "SMS_Max_Concatenated_Number"

.field public static final CUSTOMER_ITEM_SMS_MRN:Ljava/lang/String; = "SMS_Max_Recipient_Number"

.field public static final CUSTOMER_ITEM_SMS_PRIORITY:Ljava/lang/String; = "SMS_Priority"

.field public static final CUSTOMER_ITEM_SMS_SMSC_EDITABLE:Ljava/lang/String; = "SMS_SMSC_Editable"

.field public static final CUSTOMER_ITEM_SMS_SUBJECT_SUPPORT:Ljava/lang/String; = "SMS_Subject_Support"

.field public static final CUSTOMER_ITEM_SMS_TO_EMAIL_SUPPORT:Ljava/lang/String; = "SMS_To_Email_Support"

.field public static final CUSTOMER_ITEM_SMS_USE_DEVICE_TIME:Ljava/lang/String; = "SMS_Use_Device_Time"

.field public static final CUSTOMER_ITEM_SMS_WAP_PUSH_SUPPORT:Ljava/lang/String; = "SMS_Wap_Push_Support"

.field public static final CUSTOMER_ITEM_STORAGE_DOM:Ljava/lang/String; = "STORAGE_Del_Old_Msg"

.field public static final CUSTOMER_ITEM_STORAGE_MML:Ljava/lang/String; = "STORAGE_MMS_Msg_Limit"

.field public static final CUSTOMER_ITEM_STORAGE_TML:Ljava/lang/String; = "STORAGE_Text_Msg_Limit"

.field public static final CUSTOMER_ITEM_USE_SIGNATURE:Ljava/lang/String; = "MSG_Use_Signature"

.field public static final CUSTOMIZATION_DO_IT:Ljava/lang/String; = "Do_Customize"

.field public static final CUSTOMIZATION_FINISHED_IT:Ljava/lang/String; = "Finished_Customize"

.field public static final CUSTOMIZATION_GEN_FINISHED_IT:Ljava/lang/String; = "Finished_General_Customize"

.field public static final CUSTOMIZATION_QUICK_TEXT_KEY:Ljava/lang/String; = "Quick_Text_Key"

.field public static final CUSTOMIZATION_SHARE_PREFERENCE_NAME:Ljava/lang/String; = "com.android.mms.customizationBySIM"

.field public static final CUSTOMIZATION_SHARE_PREFERENCE_SIGNATURE:Ljava/lang/String; = "com.android.mms.customizationSignature"

.field public static final DB_ITEM_CMAS_SUPPORT:Ljava/lang/String; = "CMASsupport"

.field private static final ENUS:Ljava/lang/String; = "en_US"

.field private static LOG:Z = false

.field private static final MSG_SERVICE_STOPPING:I = 0x2

.field private static final MSG_SIE_CUSTOMIZE_INIT:I = 0x1

.field public static final REF_T_MSG:Ljava/lang/String; = "Message"

.field public static final REF_T_NOTIFICATION:Ljava/lang/String; = "S_Notify"

.field public static final SDM_PROVIDER_AUTHORITY:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SETTING:Landroid/net/Uri; = null

.field private static final TABLE_NAME_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG:Ljava/lang/String; = "Cust_MMSMS"

.field public static bFota_finish:Ljava/lang/Boolean;

.field private static mGeneralkeysb:Ljava/lang/StringBuilder;

.field private static mGeneralvaluesb:Ljava/lang/StringBuilder;

.field private static mbCustomizeInitialed:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;

.field mResolver:Landroid/content/ContentResolver;

.field private mServiceHandler:Lcom/android/mms/MessagesCustomizeService$ServiceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sput-boolean v3, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    .line 197
    const-string v0, "content://com.htc.sdm.provider.SDMProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    .line 199
    sget-object v0, Lcom/android/mms/MessagesCustomizeService;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "setting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    .line 204
    sput-object v4, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    .line 205
    sput-object v4, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    .line 209
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->mbCustomizeInitialed:Ljava/lang/Boolean;

    .line 212
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->bFota_finish:Ljava/lang/Boolean;

    .line 223
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->AUDIO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 231
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    .line 232
    iget-object v0, p0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    .line 271
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    return v0
.end method

.method private getCBsetting2DB(Landroid/os/Bundle;)V
    .locals 33
    .parameter "customizationBundle"

    .prologue
    .line 508
    const-string v2, "content://cbsetting/preinstall"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 509
    .local v24, preinstallUri:Landroid/net/Uri;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v32, v:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "content://cbsetting/deleteAll"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 511
    const/4 v9, 0x1

    .line 513
    .local v9, breset:Z
    if-eqz p1, :cond_b

    .line 515
    const-string v2, "Message_CBSetting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 516
    .local v8, CB:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v23

    .line 517
    .local v23, localestr:Ljava/lang/String;
    const-string v2, "Cust_MMSMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customizationCBsetting locale= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-eqz v8, :cond_b

    .line 520
    const/4 v9, 0x0

    .line 523
    const/4 v12, 0x0

    .line 524
    .local v12, customize_channel_list:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 525
    .local v14, customize_channelname_list:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 529
    .local v16, customize_channelreadonly_list:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 530
    .local v13, customize_channel_list_1st:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 531
    .local v15, customize_channelname_list_1st:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 534
    .local v17, customize_channelreadonly_list_1st:Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    .line 535
    .local v26, readonly_channel_list:Ljava/lang/StringBuilder;
    const/16 v28, 0x0

    .line 536
    .local v28, readonly_channelname_list:Ljava/lang/StringBuilder;
    const/16 v27, 0x0

    .line 537
    .local v27, readonly_channel_list_1st:Ljava/lang/StringBuilder;
    const/16 v29, 0x0

    .line 539
    .local v29, readonly_channelname_list_1st:Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    .line 540
    .local v19, firstlocale:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_a

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plenty_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v20, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    .line 542
    .local v21, item:Landroid/os/Bundle;
    if-eqz v21, :cond_5

    .line 543
    const-string v2, "locale"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 544
    .local v22, locale:Ljava/lang/String;
    const-string v2, "channel"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 545
    .local v10, channel:I
    const-string v2, "channel_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, channelname:Ljava/lang/String;
    const/16 v25, 0x1

    .line 549
    .local v25, readonly:I
    const-string v2, "readonly"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 550
    .local v30, readonlystr:Ljava/lang/String;
    if-eqz v30, :cond_1

    const-string v2, "0"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    :cond_0
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 554
    :cond_1
    const-string v2, "locale"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v2, "channel"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v2, "channel_name"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v2, "readonly"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v18, customize_ma_list:Ljava/lang/StringBuilder;
    const-string v2, "group_id "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    const-string v2, ", MA_LOCALE >"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v2, ", MA_CHANNEL >"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    const-string v2, ", MA_CHANNEL_NAME >"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v2, "Cust_MMSMS"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 573
    .local v31, result:Landroid/net/Uri;
    if-nez v20, :cond_2

    .line 574
    move-object/from16 v19, v22

    .line 577
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 579
    if-nez v13, :cond_6

    .line 580
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13           #customize_channel_list_1st:Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .restart local v13       #customize_channel_list_1st:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #customize_channelname_list_1st:Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .restart local v15       #customize_channelname_list_1st:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #customize_channelreadonly_list_1st:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .restart local v17       #customize_channelreadonly_list_1st:Ljava/lang/StringBuilder;
    :goto_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_3

    .line 593
    if-nez v27, :cond_7

    .line 594
    new-instance v27, Ljava/lang/StringBuilder;

    .end local v27           #readonly_channel_list_1st:Ljava/lang/StringBuilder;
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .restart local v27       #readonly_channel_list_1st:Ljava/lang/StringBuilder;
    new-instance v29, Ljava/lang/StringBuilder;

    .end local v29           #readonly_channelname_list_1st:Ljava/lang/StringBuilder;
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .restart local v29       #readonly_channelname_list_1st:Ljava/lang/StringBuilder;
    :goto_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_3
    const-string v2, "en_US"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    if-nez v12, :cond_8

    .line 608
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #customize_channel_list:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .restart local v12       #customize_channel_list:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14           #customize_channelname_list:Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .restart local v14       #customize_channelname_list:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #customize_channelreadonly_list:Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .restart local v16       #customize_channelreadonly_list:Ljava/lang/StringBuilder;
    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 621
    if-nez v26, :cond_9

    .line 622
    new-instance v26, Ljava/lang/StringBuilder;

    .end local v26           #readonly_channel_list:Ljava/lang/StringBuilder;
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .restart local v26       #readonly_channel_list:Ljava/lang/StringBuilder;
    new-instance v28, Ljava/lang/StringBuilder;

    .end local v28           #readonly_channelname_list:Ljava/lang/StringBuilder;
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .restart local v28       #readonly_channelname_list:Ljava/lang/StringBuilder;
    :goto_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_4
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 540
    .end local v10           #channel:I
    .end local v11           #channelname:Ljava/lang/String;
    .end local v18           #customize_ma_list:Ljava/lang/StringBuilder;
    .end local v22           #locale:Ljava/lang/String;
    .end local v25           #readonly:I
    .end local v30           #readonlystr:Ljava/lang/String;
    .end local v31           #result:Landroid/net/Uri;
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 584
    .restart local v10       #channel:I
    .restart local v11       #channelname:Ljava/lang/String;
    .restart local v18       #customize_ma_list:Ljava/lang/StringBuilder;
    .restart local v22       #locale:Ljava/lang/String;
    .restart local v25       #readonly:I
    .restart local v30       #readonlystr:Ljava/lang/String;
    .restart local v31       #result:Landroid/net/Uri;
    :cond_6
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 597
    :cond_7
    const-string v2, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v2, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 612
    :cond_8
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 625
    :cond_9
    const-string v2, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v2, ","

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 637
    .end local v10           #channel:I
    .end local v11           #channelname:Ljava/lang/String;
    .end local v18           #customize_ma_list:Ljava/lang/StringBuilder;
    .end local v21           #item:Landroid/os/Bundle;
    .end local v22           #locale:Ljava/lang/String;
    .end local v25           #readonly:I
    .end local v30           #readonlystr:Ljava/lang/String;
    .end local v31           #result:Landroid/net/Uri;
    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v26, :cond_d

    const/4 v6, 0x0

    :goto_5
    if-nez v28, :cond_e

    const/4 v7, 0x0

    :goto_6
    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->setCBsetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .end local v8           #CB:Landroid/os/Bundle;
    .end local v12           #customize_channel_list:Ljava/lang/StringBuilder;
    .end local v13           #customize_channel_list_1st:Ljava/lang/StringBuilder;
    .end local v14           #customize_channelname_list:Ljava/lang/StringBuilder;
    .end local v15           #customize_channelname_list_1st:Ljava/lang/StringBuilder;
    .end local v16           #customize_channelreadonly_list:Ljava/lang/StringBuilder;
    .end local v17           #customize_channelreadonly_list_1st:Ljava/lang/StringBuilder;
    .end local v19           #firstlocale:Ljava/lang/String;
    .end local v20           #i:I
    .end local v23           #localestr:Ljava/lang/String;
    .end local v26           #readonly_channel_list:Ljava/lang/StringBuilder;
    .end local v27           #readonly_channel_list_1st:Ljava/lang/StringBuilder;
    .end local v28           #readonly_channelname_list:Ljava/lang/StringBuilder;
    .end local v29           #readonly_channelname_list_1st:Ljava/lang/StringBuilder;
    :cond_b
    :goto_7
    if-eqz v9, :cond_c

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->setCBsetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_c
    return-void

    .line 639
    .restart local v8       #CB:Landroid/os/Bundle;
    .restart local v12       #customize_channel_list:Ljava/lang/StringBuilder;
    .restart local v13       #customize_channel_list_1st:Ljava/lang/StringBuilder;
    .restart local v14       #customize_channelname_list:Ljava/lang/StringBuilder;
    .restart local v15       #customize_channelname_list_1st:Ljava/lang/StringBuilder;
    .restart local v16       #customize_channelreadonly_list:Ljava/lang/StringBuilder;
    .restart local v17       #customize_channelreadonly_list_1st:Ljava/lang/StringBuilder;
    .restart local v19       #firstlocale:Ljava/lang/String;
    .restart local v20       #i:I
    .restart local v23       #localestr:Ljava/lang/String;
    .restart local v26       #readonly_channel_list:Ljava/lang/StringBuilder;
    .restart local v27       #readonly_channel_list_1st:Ljava/lang/StringBuilder;
    .restart local v28       #readonly_channelname_list:Ljava/lang/StringBuilder;
    .restart local v29       #readonly_channelname_list_1st:Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 645
    :cond_f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v27, :cond_10

    const/4 v6, 0x0

    :goto_8
    if-nez v29, :cond_11

    const/4 v7, 0x0

    :goto_9
    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->setCBsetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_11
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9
.end method

.method private getQuickText2DB(Landroid/os/Bundle;)V
    .locals 13
    .parameter "customizationBundle"

    .prologue
    const/4 v12, 0x0

    .line 419
    if-eqz p1, :cond_4

    .line 426
    const-string v10, "Message_QuickText"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 428
    .local v1, QT:Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 431
    const-string v10, "content://qtext/preinstall"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 432
    .local v7, preinstallUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v9, v:Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "content://qtext/deleteAll"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 437
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 438
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plenty_set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 440
    .local v6, item:Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 441
    const/4 v2, 0x1

    .line 442
    .local v2, QTcounter:I
    const-string v10, "Locale"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, Locale:Ljava/lang/String;
    const-string v10, "Locale"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v4, customize_qt_list:Ljava/lang/StringBuilder;
    const-string v10, "group_id "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    const-string v10, ", QT_LOCALE >"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Quick_Text"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, QText:Ljava/lang/String;
    const-string v10, ", QT_"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  >"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    .line 456
    :cond_0
    const-string v10, "Cust_MMSMS"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v10, "Jerry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "v.size() >>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 461
    iget-object v10, p0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    if-eqz v10, :cond_1

    .line 462
    iget-object v10, p0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10, v7, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 463
    .local v8, result:Landroid/net/Uri;
    const-string v10, "Cust_MMSMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insert result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v8           #result:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 437
    .end local v0           #Locale:Ljava/lang/String;
    .end local v2           #QTcounter:I
    .end local v3           #QText:Ljava/lang/String;
    .end local v4           #customize_qt_list:Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 453
    .restart local v0       #Locale:Ljava/lang/String;
    .restart local v2       #QTcounter:I
    .restart local v3       #QText:Ljava/lang/String;
    .restart local v4       #customize_qt_list:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    .line 455
    goto/16 :goto_1

    .line 477
    .end local v0           #Locale:Ljava/lang/String;
    .end local v1           #QT:Landroid/os/Bundle;
    .end local v2           #QTcounter:I
    .end local v3           #QText:Ljava/lang/String;
    .end local v4           #customize_qt_list:Ljava/lang/StringBuilder;
    .end local v5           #i:I
    .end local v6           #item:Landroid/os/Bundle;
    .end local v7           #preinstallUri:Landroid/net/Uri;
    .end local v9           #v:Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method private getSettingCustomization(Landroid/os/Bundle;)V
    .locals 78
    .parameter "customizationBundle"

    .prologue
    .line 788
    const-string v2, "setting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v72

    .line 790
    .local v72, setting:Landroid/os/Bundle;
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.mms.customizationBySIM"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v74

    .line 793
    .local v74, sp:Landroid/content/SharedPreferences;
    const-string v2, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sp >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eqz v72, :cond_6b

    .line 795
    const-string v2, "internal"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 796
    .local v3, audioUri:Landroid/net/Uri;
    const-string v5, " _display_name like ?"

    .line 797
    .local v5, AudioWhereStr:Ljava/lang/String;
    const/16 v59, 0x0

    .line 798
    .local v59, audioCursor:Landroid/database/Cursor;
    const-string v2, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioUri >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-interface/range {v74 .. v74}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v62

    .line 804
    .local v62, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v74, :cond_0

    .line 805
    const-string v2, "Finished_Customize"

    const/4 v4, 0x0

    move-object/from16 v0, v74

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MessagesCustomizeService;->mbCustomizeInitialed:Ljava/lang/Boolean;

    .line 807
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_mbCustomizeInitialed="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/mms/MessagesCustomizeService;->mbCustomizeInitialed:Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 812
    const-string v2, "Do_Customize"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.mms_preferences"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v70

    .line 818
    .local v70, pref:Landroid/content/SharedPreferences;
    invoke-interface/range {v70 .. v70}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v71

    .line 822
    .local v71, prefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface/range {v71 .. v71}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 825
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting.size >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v72 .. v72}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v2, "SMS_Delivery_Report"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 827
    .local v42, SMS_DR:Ljava/lang/String;
    if-eqz v42, :cond_2d

    .line 828
    const-string v2, "true"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 829
    const-string v2, "SMS_Delivery_Report"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 830
    const-string v2, "pref_key_sms_delivery_reports"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 842
    :goto_0
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_DR >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v2, "MMS_Delivery_Report"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 844
    .local v11, MMS_DR:Ljava/lang/String;
    if-eqz v11, :cond_2f

    .line 845
    const-string v2, "true"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 846
    const-string v2, "MMS_Delivery_Report"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 847
    const-string v2, "pref_key_mms_delivery_reports"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 857
    :goto_1
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_DR >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v2, "MMS_Read_Report"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 859
    .local v26, MMS_RR:Ljava/lang/String;
    if-eqz v26, :cond_31

    .line 860
    const-string v2, "true"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 861
    const-string v2, "MMS_Read_Report"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 862
    const-string v2, "pref_key_mms_read_reports"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 872
    :goto_2
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RR >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v2, "MMS_Auto_Retrieve"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 874
    .local v9, MMS_AR:Ljava/lang/String;
    if-eqz v9, :cond_33

    .line 875
    const-string v2, "true"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 876
    const-string v2, "MMS_Auto_Retrieve"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 877
    const-string v2, "pref_key_mms_auto_retrieval"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 888
    :goto_3
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_AR >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v2, "MMS_Roaming_Auto_Retrieve"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 890
    .local v21, MMS_RAR:Ljava/lang/String;
    if-eqz v21, :cond_35

    .line 891
    const-string v2, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 892
    const-string v2, "MMS_Roaming_Auto_Retrieve"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 893
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 904
    :goto_4
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RAR >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v2, "MMS_Priority"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 906
    .local v20, MMS_Priority:Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 907
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v75

    .line 908
    .local v75, str:Ljava/lang/String;
    const-string v2, "normal"

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    const-string v75, "medium"

    .line 911
    :cond_1
    const-string v2, "MMS_Priority"

    move-object/from16 v0, v62

    move-object/from16 v1, v75

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 912
    const-string v2, "pref_key_mms_priority"

    move-object/from16 v0, v71

    move-object/from16 v1, v75

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 915
    .end local v75           #str:Ljava/lang/String;
    :cond_2
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_Priority >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v2, "MMS_Msg_Size1"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 917
    .local v65, msgSize1:Ljava/lang/String;
    if-eqz v65, :cond_3

    .line 918
    const-string v2, "MMS_Msg_Size1"

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 919
    :cond_3
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgSize1 >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v2, "MMS_Msg_Size2"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 921
    .local v66, msgSize2:Ljava/lang/String;
    if-eqz v66, :cond_4

    .line 922
    const-string v2, "MMS_Msg_Size2"

    move-object/from16 v0, v62

    move-object/from16 v1, v66

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 923
    :cond_4
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgSize2 >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v2, "MMS_Msg_Size3"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 925
    .local v67, msgSize3:Ljava/lang/String;
    if-eqz v67, :cond_5

    .line 926
    const-string v2, "MMS_Msg_Size3"

    move-object/from16 v0, v62

    move-object/from16 v1, v67

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 927
    :cond_5
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgSize3 >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v2, "MMS_Msg_Size_Choose"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 929
    .local v68, msgSizeChoose:Ljava/lang/String;
    if-eqz v68, :cond_7

    .line 930
    const/16 v61, 0x1

    .line 931
    .local v61, choose:I
    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 932
    const/16 v61, 0x2

    .line 935
    :cond_6
    :goto_5
    const-string v2, "MMS_Msg_Size_Choose"

    invoke-static/range {v61 .. v61}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 936
    const-string v2, "pref_key_mms_max_size"

    invoke-static/range {v61 .. v61}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 938
    .end local v61           #choose:I
    :cond_7
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgSizeChoose >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v2, "MMS_Received_Notify"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 940
    .local v23, MMS_RN:Ljava/lang/String;
    if-eqz v23, :cond_38

    .line 941
    const-string v2, "true"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 942
    const-string v2, "MMS_Received_Notify"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 943
    const-string v2, "pref_key_enable_received_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 954
    :goto_6
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v2, "MMS_Play_Received_Notify"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 956
    .local v19, MMS_PRN:Ljava/lang/String;
    if-eqz v19, :cond_3a

    .line 957
    const-string v2, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 958
    const-string v2, "MMS_Play_Received_Notify"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 959
    const-string v2, "pref_key_play_received_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 970
    :goto_7
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_PRN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v2, "MMS_Received_Notify_sound"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 972
    .local v24, MMS_RNS:Ljava/lang/String;
    new-instance v73, Ljava/lang/String;

    const-string v2, "content://settings/system/notification_sound"

    move-object/from16 v0, v73

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 973
    .local v73, soundfile:Ljava/lang/String;
    if-eqz v24, :cond_3c

    .line 974
    const-string v2, "Default Ringtone"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/MessagesCustomizeService;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v59

    .line 978
    if-eqz v59, :cond_9

    .line 979
    const-wide/16 v63, -0x1

    .line 980
    .local v63, id:J
    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 981
    const/4 v2, 0x0

    move-object/from16 v0, v59

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 982
    const-string v2, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v63

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_8
    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->close()V

    .line 985
    const-wide/16 v6, 0x0

    cmp-long v2, v63, v6

    if-ltz v2, :cond_9

    .line 987
    new-instance v73, Ljava/lang/String;

    .end local v73           #soundfile:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v63 .. v64}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v73

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 988
    .restart local v73       #soundfile:Ljava/lang/String;
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "soundfile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v2, "MMS_Received_Notify_sound"

    move-object/from16 v0, v62

    move-object/from16 v1, v73

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 990
    const-string v2, "pref_key_received_ringtone"

    move-object/from16 v0, v71

    move-object/from16 v1, v73

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 995
    .end local v63           #id:J
    :cond_9
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customize set back SDM: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v73

    invoke-static {v2, v0}, Lcom/android/mms/MessagesCustomizeService;->setSDBSoundSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 1015
    :goto_8
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RNS >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v2, "MMS_Received_Viberation"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1017
    .local v27, MMS_RV:Ljava/lang/String;
    if-eqz v27, :cond_3e

    .line 1018
    const-string v2, "true"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1019
    const-string v2, "MMS_Received_Viberation"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1020
    const-string v2, "pref_key_vibrate_received_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1030
    :goto_9
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RV >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v2, "MMS_Sent_Notify"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1032
    .local v30, MMS_SN:Ljava/lang/String;
    if-eqz v30, :cond_40

    .line 1033
    const-string v2, "true"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1034
    const-string v2, "MMS_Sent_Notify"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1035
    const-string v2, "pref_key_enable_sent_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1045
    :goto_a
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_SN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v2, "MMS_Fail_Notify"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1047
    .local v13, MMS_FN:Ljava/lang/String;
    if-eqz v13, :cond_42

    .line 1048
    const-string v2, "true"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1049
    const-string v2, "MMS_Fail_Notify"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1050
    const-string v2, "pref_key_enable_sent_failure_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1060
    :goto_b
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_FN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v2, "MMS_Play_Notify"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1062
    .local v18, MMS_PN:Ljava/lang/String;
    if-eqz v18, :cond_44

    .line 1063
    const-string v2, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1064
    const-string v2, "MMS_Play_Notify"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1065
    const-string v2, "pref_key_play_sent_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1076
    :goto_c
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_PN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v2, "MMS_Notify_Sound"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1078
    .local v17, MMS_NS:Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 1079
    const-string v2, "Default Ringtone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/MessagesCustomizeService;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v59

    .line 1083
    if-eqz v59, :cond_b

    .line 1084
    const-wide/16 v63, -0x1

    .line 1085
    .restart local v63       #id:J
    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1086
    const/4 v2, 0x0

    move-object/from16 v0, v59

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 1087
    const-string v2, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v63

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_a
    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->close()V

    .line 1090
    const-wide/16 v6, 0x0

    cmp-long v2, v63, v6

    if-ltz v2, :cond_b

    .line 1091
    const-string v2, "MMS_Notify_Sound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v63 .. v64}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1093
    const-string v2, "pref_key_sent_ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v63 .. v64}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1105
    .end local v63           #id:J
    :cond_b
    :goto_d
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_NS >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v2, "MMS_Viberation"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1107
    .local v31, MMS_V:Ljava/lang/String;
    if-eqz v31, :cond_47

    .line 1108
    const-string v2, "true"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1109
    const-string v2, "MMS_Viberation"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1110
    const-string v2, "pref_key_vibrate_sent_notifications"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1121
    :goto_e
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_V >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const-string v2, "MMS_Max_Recipient_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    const-string v2, "MMS_Max_Recipient_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1127
    .local v15, MMS_MRN:I
    :goto_f
    if-lez v15, :cond_c

    .line 1128
    const-string v2, "MMS_Max_Recipient_Number"

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1129
    invoke-static {v15}, Lcom/android/mms/MmsApp;->setMaxMMSRecipientNumber(I)V

    .line 1131
    :cond_c
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_MRN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v2, "SMS_Max_Recipient_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    const-string v2, "SMS_Max_Recipient_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 1136
    .local v48, SMS_MRN:I
    :goto_10
    if-lez v48, :cond_d

    .line 1137
    const-string v2, "SMS_Max_Recipient_Number"

    move-object/from16 v0, v62

    move/from16 v1, v48

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1138
    invoke-static/range {v48 .. v48}, Lcom/android/mms/MmsApp;->setMaxSMSRecipientNumber(I)V

    .line 1140
    :cond_d
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_MRN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const-string v2, "SMS_Max_Concatenated_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-string v2, "SMS_Max_Concatenated_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 1145
    .local v47, SMS_MCN:I
    :goto_11
    if-lez v47, :cond_e

    .line 1146
    const-string v2, "SMS_Max_Concatenated_Number"

    move-object/from16 v0, v62

    move/from16 v1, v47

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1147
    invoke-static/range {v47 .. v47}, Lcom/android/mms/MmsApp;->setMaxSMSConcatenatedNumber(I)V

    .line 1149
    :cond_e
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_MCN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v2, "MMS_Max_Slide_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    const-string v2, "MMS_Max_Slide_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1154
    .local v16, MMS_MSN:I
    :goto_12
    if-lez v16, :cond_f

    .line 1155
    const-string v2, "MMS_Max_Slide_Number"

    move-object/from16 v0, v62

    move/from16 v1, v16

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1156
    invoke-static/range {v16 .. v16}, Lcom/android/mms/MmsApp;->setMaxMMSSlideNumber(I)V

    .line 1158
    :cond_f
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_MSN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v2, "MMS_Default_Slide_Duration"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    const-string v2, "MMS_Default_Slide_Duration"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1163
    .local v12, MMS_DSD:I
    :goto_13
    if-lez v12, :cond_10

    .line 1164
    const-string v2, "MMS_Default_Slide_Duration"

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1165
    invoke-static {v12}, Lcom/android/mms/MmsApp;->setMMSSlideDuration(I)V

    .line 1167
    :cond_10
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_DSD >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v2, "MMS_Retry_Policy"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1172
    .local v25, MMS_RP:Ljava/lang/String;
    if-eqz v25, :cond_11

    .line 1173
    const-string v2, "MMS_Retry_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    const-string v7, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    const-string v6, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsApp;->setMMSRetryPolicy(Ljava/lang/String;)V

    .line 1176
    :cond_11
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RP >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const-string v2, "RECIPT_Show_Sent_Msg_History"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1182
    .local v37, RECIPT_SSMMH:Ljava/lang/String;
    if-eqz v37, :cond_4e

    .line 1183
    const-string v2, "true"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1184
    const-string v2, "RECIPT_Show_Sent_Msg_History"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1185
    const-string v2, "pref_key_sent_history"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1193
    :goto_14
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECIPT_SSMMH >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v2, "RECIPT_Show_Call_History"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1197
    .local v35, RECIPT_SCH:Ljava/lang/String;
    if-eqz v35, :cond_50

    .line 1198
    const-string v2, "true"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1199
    const-string v2, "RECIPT_Show_Call_History"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1200
    const-string v2, "pref_key_call_history"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1208
    :goto_15
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECIPT_SCH >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string v2, "RECIPT_Show_Email_Address"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1212
    .local v36, RECIPT_SEA:Ljava/lang/String;
    if-eqz v36, :cond_52

    .line 1213
    const-string v2, "true"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1214
    const-string v2, "RECIPT_Show_Email_Address"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1215
    const-string v2, "pref_key_email_address"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1223
    :goto_16
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECIPT_SEA >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v2, "STORAGE_Del_Old_Msg"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1227
    .local v55, STORAGE_DOM:Ljava/lang/String;
    if-eqz v55, :cond_54

    .line 1228
    const-string v2, "true"

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1229
    const-string v2, "STORAGE_Del_Old_Msg"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1230
    const-string v2, "pref_key_auto_delete"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1238
    :goto_17
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STORAGE_DOM >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const-string v2, "STORAGE_Text_Msg_Limit"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    const-string v2, "STORAGE_Text_Msg_Limit"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    .line 1243
    .local v57, STORAGE_TML:I
    :goto_18
    if-lez v57, :cond_12

    .line 1244
    const-string v2, "STORAGE_Text_Msg_Limit"

    move-object/from16 v0, v62

    move/from16 v1, v57

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1245
    const-string v2, "pref_key_sms_delete_limit"

    move-object/from16 v0, v71

    move/from16 v1, v57

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1249
    :cond_12
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STORAGE_TML >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-string v2, "STORAGE_MMS_Msg_Limit"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    const-string v2, "STORAGE_MMS_Msg_Limit"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    .line 1254
    .local v56, STORAGE_MML:I
    :goto_19
    if-lez v56, :cond_13

    .line 1255
    const-string v2, "STORAGE_MMS_Msg_Limit"

    move-object/from16 v0, v62

    move/from16 v1, v56

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1256
    const-string v2, "pref_key_mms_delete_limit"

    move-object/from16 v0, v71

    move/from16 v1, v56

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1260
    :cond_13
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STORAGE_MML >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v2, "MSG_Preview_Line"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    const-string v2, "MSG_Preview_Line"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1265
    .local v32, MSG_PRVL:I
    :goto_1a
    if-lez v32, :cond_14

    .line 1266
    const-string v2, "MSG_Preview_Line"

    move-object/from16 v0, v62

    move/from16 v1, v32

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1267
    const-string v2, "pref_key_msg_preview"

    add-int/lit8 v4, v32, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1269
    sput v32, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    .line 1275
    :cond_14
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PRVL >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v2, "MSG_Use_Signature"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1279
    .local v58, USE_SIGNATURE:Ljava/lang/String;
    if-eqz v58, :cond_59

    .line 1280
    const-string v2, "true"

    move-object/from16 v0, v58

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1281
    const-string v2, "MSG_Use_Signature"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1282
    const-string v2, "pref_key_signature_enabled"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1287
    :goto_1b
    const-string v2, "MSG_Signature_Show"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1288
    const-string v2, "pref_key_signature_settings"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1289
    const-string v2, "pref_key_signature_text"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/mms/ui/MessageUtils;->getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1301
    :goto_1c
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USE_SIGNATURE >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v2, "SMS_Wap_Push_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1307
    .local v54, SMS_WAP_PUSH:Ljava/lang/String;
    if-eqz v54, :cond_15

    .line 1308
    const-string v2, "true"

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1309
    const-string v2, "SMS_Wap_Push_Support"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1314
    :cond_15
    :goto_1d
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_WAP_PUSH >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v2, "SMS_Empty_Draft_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1318
    .local v44, SMS_EMPTY_DRAFT:Ljava/lang/String;
    if-eqz v44, :cond_16

    .line 1319
    const-string v2, "true"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1320
    const-string v2, "SMS_Empty_Draft_Support"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1325
    :cond_16
    :goto_1e
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_EMPTY_DRAFT >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v2, "SMS_To_Email_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1329
    .local v52, SMS_TO_EMAIL:Ljava/lang/String;
    if-eqz v52, :cond_17

    .line 1330
    const-string v2, "true"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1331
    const-string v2, "SMS_To_Email_Support"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1336
    :cond_17
    :goto_1f
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_TO_EMAIL >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v2, "SMS_Email_Server_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1340
    .local v43, SMS_EMAIL_SERVER_NUMBER:Ljava/lang/String;
    if-eqz v43, :cond_18

    .line 1341
    const-string v2, "SMS_Email_Server_Number"

    move-object/from16 v0, v62

    move-object/from16 v1, v43

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1343
    :cond_18
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_EMAIL_SERVER_NUMBER >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const-string v2, "SMS_Class_Zero_Save_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1347
    .local v40, SMS_CLASS_ZERO_SAVE:Ljava/lang/String;
    if-eqz v40, :cond_19

    .line 1348
    const-string v2, "true"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1349
    const-string v2, "SMS_Class_Zero_Save_Support"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1354
    :cond_19
    :goto_20
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_CLASS_ZERO_SAVE >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v2, "SMS_Concatenated_Email_SMS"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1358
    .local v41, SMS_CONCATENATED_EMAIL_SMS:Ljava/lang/String;
    if-eqz v41, :cond_1a

    .line 1359
    const-string v2, "true"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1360
    const-string v2, "SMS_Concatenated_Email_SMS"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1365
    :cond_1a
    :goto_21
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_CONCATENATED_EMAIL_SMS >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-string v2, "SMS_Subject_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1369
    .local v51, SMS_SUBJECT:Ljava/lang/String;
    if-eqz v51, :cond_1b

    .line 1370
    const-string v2, "true"

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1371
    const-string v2, "SMS_Subject_Support"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1376
    :cond_1b
    :goto_22
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_SUBJECT >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const-string v2, "SMS_SMSC_Editable"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1380
    .local v50, SMS_SMSC_EDITABLE:Ljava/lang/String;
    if-eqz v50, :cond_1c

    .line 1381
    const-string v2, "true"

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1382
    const-string v2, "SMS_SMSC_Editable"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1383
    const-string v2, "pref_key_sms_center"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1389
    :cond_1c
    :goto_23
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_SMSC_EDITABLE >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v2, "SMS_Empty_SMS_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1393
    .local v45, SMS_EMPTY_SMS:Ljava/lang/String;
    if-eqz v45, :cond_1d

    .line 1394
    const-string v2, "true"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1395
    const-string v2, "SMS_Empty_SMS_Support"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1400
    :cond_1d
    :goto_24
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_EMPTY_SMS >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v2, "SMS_High_Priority"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1404
    .local v46, SMS_HIGH_PRIORITY:Ljava/lang/String;
    if-eqz v46, :cond_1e

    .line 1405
    const-string v2, "SMS_High_Priority"

    move-object/from16 v0, v62

    move-object/from16 v1, v46

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1407
    :cond_1e
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_HIGH_PRIORITY >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const-string v2, "SMS_Use_Device_Time"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1411
    .local v53, SMS_USE_DEVICE_TIME:Ljava/lang/String;
    if-eqz v53, :cond_1f

    .line 1412
    const-string v2, "true"

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1413
    const-string v2, "SMS_Use_Device_Time"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1418
    :cond_1f
    :goto_25
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_USE_DEVICE_TIME >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const-string v2, "SMS_Characters"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1422
    .local v39, SMS_CHARACTERS:Ljava/lang/String;
    if-eqz v39, :cond_20

    .line 1423
    const-string v2, "true"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1424
    const-string v2, "SMS_Characters"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1425
    const-string v2, "pref_key_sms_characters"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1431
    :cond_20
    :goto_26
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_CHARACTERS >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const-string v2, "SMS_Priority"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1435
    .local v49, SMS_PRIORITY:Ljava/lang/String;
    if-eqz v49, :cond_21

    .line 1436
    const-string v2, "SMS_Priority"

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1438
    :cond_21
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_PRIORITY >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v2, "SMS_Callback_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1442
    .local v38, SMS_CALLBACK_NUMBER:Ljava/lang/String;
    if-eqz v38, :cond_22

    .line 1443
    const-string v2, "true"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1444
    const-string v2, "SMS_Callback_Number"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1445
    const-string v2, "pref_key_sms_callback"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1451
    :cond_22
    :goto_27
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS_CALLBACK_NUMBER >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string v2, "MMS_Callback_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1455
    .local v10, MMS_CALLBACK_NUMBER:Ljava/lang/String;
    if-eqz v10, :cond_23

    .line 1456
    const-string v2, "true"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1457
    const-string v2, "MMS_Callback_Number"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1458
    const-string v2, "pref_key_mms_callback"

    const/4 v4, 0x1

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1464
    :cond_23
    :goto_28
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_CALLBACK_NUMBER >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v2, "Display_message_on_screen"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1469
    .local v33, NTF_DISPLAY:Ljava/lang/String;
    if-eqz v33, :cond_24

    .line 1470
    const-string v2, "Display_message_on_screen"

    move-object/from16 v0, v62

    move-object/from16 v1, v33

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1471
    const-string v2, "pref_display_message"

    move-object/from16 v0, v71

    move-object/from16 v1, v33

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1473
    :cond_24
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NTF_DISPLAY >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-string v2, "RECIPT_Input_Type_Number"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1478
    .local v34, RECIPT_ITN:Ljava/lang/String;
    if-eqz v34, :cond_25

    .line 1479
    const-string v2, "RECIPT_Input_Type_Number"

    const-string v4, "true"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1481
    :cond_25
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECIPT_ITN >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v2, "MMS_Show_Connection_Setting"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1486
    .local v29, MMS_SHOW_CONNECTION_SETTING:Ljava/lang/String;
    if-eqz v29, :cond_26

    .line 1487
    const-string v2, "MMS_Show_Connection_Setting"

    const-string v4, "true"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1489
    :cond_26
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_SHOW_CONNECTION_SETTING >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-string v2, "MMS_Show_All_Mixed_Text"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1492
    .local v28, MMS_SHOW_ALL_TEXT:Ljava/lang/String;
    if-eqz v28, :cond_27

    .line 1493
    const-string v2, "MMS_Show_All_Mixed_Text"

    const-string v4, "true"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1495
    :cond_27
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_SHOW_ALL_TEXT >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const-string v2, "MMS_Force_Display_In_Slideshow"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1499
    .local v14, MMS_FORCE_DISPLAY_SLIDESHOW:Ljava/lang/String;
    if-eqz v14, :cond_28

    .line 1500
    const-string v2, "MMS_Force_Display_In_Slideshow"

    const-string v4, "true"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1502
    :cond_28
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_FORCE_DISPLAY_SLIDESHOW >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string v2, "MMS_Show_Restricted_Mode"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1506
    .local v22, MMS_RM:Ljava/lang/String;
    if-eqz v22, :cond_67

    .line 1507
    const-string v2, "true"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1508
    const-string v2, "MMS_Show_Restricted_Mode"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1509
    const-string v2, "pref_key_mms_restricted_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1517
    :goto_29
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_RM >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string v2, "MSG_General_CMAS_Support"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1526
    .local v8, CMAS_ENABLE:Ljava/lang/String;
    if-eqz v8, :cond_68

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Str"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1531
    const-string v2, "MSG_General_CMAS_Support"

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1536
    :goto_2a
    const-string v2, "trueStr"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/16 v60, 0x1

    .line 1537
    .local v60, bCMASsupport:Z
    :goto_2b
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mms customizeRcv bCMASsupport is str/boolean: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->broadcastCMASSupportStatus(Ljava/lang/String;)V

    .line 1542
    const-string v2, "CMASsupport"

    invoke-static {v2, v8}, Lcom/android/mms/MessagesCustomizeService;->keepkeyvalue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAS_ENABLE >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    sget-object v2, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_29

    sget-object v2, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_29

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/android/mms/MessagesCustomizeService;->updateMsgGeneralDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    :cond_29
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS_ua_string >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/transport/HttpUtils;->getOemUAString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-interface/range {v71 .. v71}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1553
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1556
    const-string v2, "MSG_new_msg_notify_rule_key"

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1557
    .local v69, newMsgRule:Ljava/lang/String;
    if-eqz v69, :cond_2a

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v69

    .line 1558
    :cond_2a
    const-string v2, "false"

    move-object/from16 v0, v69

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1559
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/mms/MmsApp;->applyNewMsgNotifyRule(Z)V

    .line 1560
    const-string v2, "MSG_new_msg_notify_rule_key"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1565
    :goto_2c
    const-string v2, "Cust_MMSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newMsgRule? > "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1573
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v2

    float-to-double v6, v2

    const-wide/high16 v76, 0x400c

    cmpl-double v2, v6, v76

    if-ltz v2, :cond_2b

    .line 1574
    invoke-static {}, Lcom/android/mms/MmsApp;->initGeneralSIECustomization()V

    .line 1585
    .end local v3           #audioUri:Landroid/net/Uri;
    .end local v5           #AudioWhereStr:Ljava/lang/String;
    .end local v8           #CMAS_ENABLE:Ljava/lang/String;
    .end local v9           #MMS_AR:Ljava/lang/String;
    .end local v10           #MMS_CALLBACK_NUMBER:Ljava/lang/String;
    .end local v11           #MMS_DR:Ljava/lang/String;
    .end local v12           #MMS_DSD:I
    .end local v13           #MMS_FN:Ljava/lang/String;
    .end local v14           #MMS_FORCE_DISPLAY_SLIDESHOW:Ljava/lang/String;
    .end local v15           #MMS_MRN:I
    .end local v16           #MMS_MSN:I
    .end local v17           #MMS_NS:Ljava/lang/String;
    .end local v18           #MMS_PN:Ljava/lang/String;
    .end local v19           #MMS_PRN:Ljava/lang/String;
    .end local v20           #MMS_Priority:Ljava/lang/String;
    .end local v21           #MMS_RAR:Ljava/lang/String;
    .end local v22           #MMS_RM:Ljava/lang/String;
    .end local v23           #MMS_RN:Ljava/lang/String;
    .end local v24           #MMS_RNS:Ljava/lang/String;
    .end local v25           #MMS_RP:Ljava/lang/String;
    .end local v26           #MMS_RR:Ljava/lang/String;
    .end local v27           #MMS_RV:Ljava/lang/String;
    .end local v28           #MMS_SHOW_ALL_TEXT:Ljava/lang/String;
    .end local v29           #MMS_SHOW_CONNECTION_SETTING:Ljava/lang/String;
    .end local v30           #MMS_SN:Ljava/lang/String;
    .end local v31           #MMS_V:Ljava/lang/String;
    .end local v32           #MSG_PRVL:I
    .end local v33           #NTF_DISPLAY:Ljava/lang/String;
    .end local v34           #RECIPT_ITN:Ljava/lang/String;
    .end local v35           #RECIPT_SCH:Ljava/lang/String;
    .end local v36           #RECIPT_SEA:Ljava/lang/String;
    .end local v37           #RECIPT_SSMMH:Ljava/lang/String;
    .end local v38           #SMS_CALLBACK_NUMBER:Ljava/lang/String;
    .end local v39           #SMS_CHARACTERS:Ljava/lang/String;
    .end local v40           #SMS_CLASS_ZERO_SAVE:Ljava/lang/String;
    .end local v41           #SMS_CONCATENATED_EMAIL_SMS:Ljava/lang/String;
    .end local v42           #SMS_DR:Ljava/lang/String;
    .end local v43           #SMS_EMAIL_SERVER_NUMBER:Ljava/lang/String;
    .end local v44           #SMS_EMPTY_DRAFT:Ljava/lang/String;
    .end local v45           #SMS_EMPTY_SMS:Ljava/lang/String;
    .end local v46           #SMS_HIGH_PRIORITY:Ljava/lang/String;
    .end local v47           #SMS_MCN:I
    .end local v48           #SMS_MRN:I
    .end local v49           #SMS_PRIORITY:Ljava/lang/String;
    .end local v50           #SMS_SMSC_EDITABLE:Ljava/lang/String;
    .end local v51           #SMS_SUBJECT:Ljava/lang/String;
    .end local v52           #SMS_TO_EMAIL:Ljava/lang/String;
    .end local v53           #SMS_USE_DEVICE_TIME:Ljava/lang/String;
    .end local v54           #SMS_WAP_PUSH:Ljava/lang/String;
    .end local v55           #STORAGE_DOM:Ljava/lang/String;
    .end local v56           #STORAGE_MML:I
    .end local v57           #STORAGE_TML:I
    .end local v58           #USE_SIGNATURE:Ljava/lang/String;
    .end local v59           #audioCursor:Landroid/database/Cursor;
    .end local v60           #bCMASsupport:Z
    .end local v62           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v65           #msgSize1:Ljava/lang/String;
    .end local v66           #msgSize2:Ljava/lang/String;
    .end local v67           #msgSize3:Ljava/lang/String;
    .end local v68           #msgSizeChoose:Ljava/lang/String;
    .end local v69           #newMsgRule:Ljava/lang/String;
    .end local v70           #pref:Landroid/content/SharedPreferences;
    .end local v71           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v73           #soundfile:Ljava/lang/String;
    :cond_2b
    :goto_2d
    return-void

    .line 833
    .restart local v3       #audioUri:Landroid/net/Uri;
    .restart local v5       #AudioWhereStr:Ljava/lang/String;
    .restart local v42       #SMS_DR:Ljava/lang/String;
    .restart local v59       #audioCursor:Landroid/database/Cursor;
    .restart local v62       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v70       #pref:Landroid/content/SharedPreferences;
    .restart local v71       #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2c
    const-string v2, "SMS_Delivery_Report"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 834
    const-string v2, "pref_key_sms_delivery_reports"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 839
    :cond_2d
    const-string v2, "pref_key_sms_delivery_reports"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 850
    .restart local v11       #MMS_DR:Ljava/lang/String;
    :cond_2e
    const-string v2, "MMS_Delivery_Report"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 851
    const-string v2, "pref_key_mms_delivery_reports"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 855
    :cond_2f
    const-string v2, "pref_key_mms_delivery_reports"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 865
    .restart local v26       #MMS_RR:Ljava/lang/String;
    :cond_30
    const-string v2, "MMS_Read_Report"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 866
    const-string v2, "pref_key_mms_read_reports"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 870
    :cond_31
    const-string v2, "pref_key_mms_read_reports"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 880
    .restart local v9       #MMS_AR:Ljava/lang/String;
    :cond_32
    const-string v2, "MMS_Auto_Retrieve"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v2, "pref_key_mms_auto_retrieval"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 886
    :cond_33
    const-string v2, "pref_key_mms_auto_retrieval"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 896
    .restart local v21       #MMS_RAR:Ljava/lang/String;
    :cond_34
    const-string v2, "MMS_Roaming_Auto_Retrieve"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 897
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 902
    :cond_35
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 933
    .restart local v20       #MMS_Priority:Ljava/lang/String;
    .restart local v61       #choose:I
    .restart local v65       #msgSize1:Ljava/lang/String;
    .restart local v66       #msgSize2:Ljava/lang/String;
    .restart local v67       #msgSize3:Ljava/lang/String;
    .restart local v68       #msgSizeChoose:Ljava/lang/String;
    :cond_36
    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 934
    const/16 v61, 0x3

    goto/16 :goto_5

    .line 946
    .end local v61           #choose:I
    .restart local v23       #MMS_RN:Ljava/lang/String;
    :cond_37
    const-string v2, "MMS_Received_Notify"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 947
    const-string v2, "pref_key_enable_received_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_6

    .line 952
    :cond_38
    const-string v2, "pref_key_enable_received_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_6

    .line 962
    .restart local v19       #MMS_PRN:Ljava/lang/String;
    :cond_39
    const-string v2, "MMS_Play_Received_Notify"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 963
    const-string v2, "pref_key_play_received_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_7

    .line 968
    :cond_3a
    const-string v2, "pref_key_play_received_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_7

    .line 999
    .restart local v24       #MMS_RNS:Ljava/lang/String;
    .restart local v73       #soundfile:Ljava/lang/String;
    :cond_3b
    const-string v2, "pref_key_received_ringtone"

    const-string v4, " "

    move-object/from16 v0, v70

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 1001
    .restart local v75       #str:Ljava/lang/String;
    const-string v2, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default Received notify sound >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v2, "MMS_Received_Notify_sound"

    move-object/from16 v0, v62

    move-object/from16 v1, v75

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1003
    const-string v2, "pref_key_received_ringtone"

    move-object/from16 v0, v71

    move-object/from16 v1, v73

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v73

    invoke-static {v2, v0}, Lcom/android/mms/MessagesCustomizeService;->setSDBSoundSetting(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1011
    .end local v75           #str:Ljava/lang/String;
    :cond_3c
    const-string v2, "pref_key_received_ringtone"

    move-object/from16 v0, v71

    move-object/from16 v1, v73

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_8

    .line 1023
    .restart local v27       #MMS_RV:Ljava/lang/String;
    :cond_3d
    const-string v2, "MMS_Received_Viberation"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1024
    const-string v2, "pref_key_vibrate_received_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_9

    .line 1028
    :cond_3e
    const-string v2, "pref_key_vibrate_received_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_9

    .line 1038
    .restart local v30       #MMS_SN:Ljava/lang/String;
    :cond_3f
    const-string v2, "MMS_Sent_Notify"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1039
    const-string v2, "pref_key_enable_sent_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_a

    .line 1043
    :cond_40
    const-string v2, "pref_key_enable_sent_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_a

    .line 1053
    .restart local v13       #MMS_FN:Ljava/lang/String;
    :cond_41
    const-string v2, "MMS_Fail_Notify"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1054
    const-string v2, "pref_key_enable_sent_failure_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_b

    .line 1058
    :cond_42
    const-string v2, "pref_key_enable_sent_failure_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_b

    .line 1068
    .restart local v18       #MMS_PN:Ljava/lang/String;
    :cond_43
    const-string v2, "MMS_Play_Notify"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1069
    const-string v2, "pref_key_play_sent_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_c

    .line 1074
    :cond_44
    const-string v2, "pref_key_play_sent_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_c

    .line 1098
    .restart local v17       #MMS_NS:Ljava/lang/String;
    :cond_45
    const-string v2, "pref_key_sent_ringtone"

    const-string v4, " "

    move-object/from16 v0, v70

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 1100
    .restart local v75       #str:Ljava/lang/String;
    const-string v2, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default sent notify sound >"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v2, "MMS_Notify_Sound"

    move-object/from16 v0, v62

    move-object/from16 v1, v75

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_d

    .line 1113
    .end local v75           #str:Ljava/lang/String;
    .restart local v31       #MMS_V:Ljava/lang/String;
    :cond_46
    const-string v2, "MMS_Viberation"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1114
    const-string v2, "pref_key_vibrate_sent_notifications"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_e

    .line 1119
    :cond_47
    const-string v2, "pref_key_vibrate_sent_notifications"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_e

    .line 1125
    :cond_48
    const/4 v15, -0x1

    goto/16 :goto_f

    .line 1134
    .restart local v15       #MMS_MRN:I
    :cond_49
    const/16 v48, -0x1

    goto/16 :goto_10

    .line 1143
    .restart local v48       #SMS_MRN:I
    :cond_4a
    const/16 v47, -0x1

    goto/16 :goto_11

    .line 1152
    .restart local v47       #SMS_MCN:I
    :cond_4b
    const/16 v16, -0x1

    goto/16 :goto_12

    .line 1161
    .restart local v16       #MMS_MSN:I
    :cond_4c
    const/4 v12, -0x1

    goto/16 :goto_13

    .line 1187
    .restart local v12       #MMS_DSD:I
    .restart local v25       #MMS_RP:Ljava/lang/String;
    .restart local v37       #RECIPT_SSMMH:Ljava/lang/String;
    :cond_4d
    const-string v2, "RECIPT_Show_Sent_Msg_History"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1188
    const-string v2, "pref_key_sent_history"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_14

    .line 1191
    :cond_4e
    const-string v2, "pref_key_sent_history"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_14

    .line 1202
    .restart local v35       #RECIPT_SCH:Ljava/lang/String;
    :cond_4f
    const-string v2, "RECIPT_Show_Call_History"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string v2, "pref_key_call_history"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_15

    .line 1206
    :cond_50
    const-string v2, "pref_key_call_history"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_15

    .line 1217
    .restart local v36       #RECIPT_SEA:Ljava/lang/String;
    :cond_51
    const-string v2, "RECIPT_Show_Email_Address"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1218
    const-string v2, "pref_key_email_address"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_16

    .line 1221
    :cond_52
    const-string v2, "pref_key_email_address"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_16

    .line 1232
    .restart local v55       #STORAGE_DOM:Ljava/lang/String;
    :cond_53
    const-string v2, "STORAGE_Del_Old_Msg"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1233
    const-string v2, "pref_key_auto_delete"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_17

    .line 1236
    :cond_54
    const-string v2, "pref_key_auto_delete"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_17

    .line 1241
    :cond_55
    const/16 v57, -0x1

    goto/16 :goto_18

    .line 1252
    .restart local v57       #STORAGE_TML:I
    :cond_56
    const/16 v56, -0x1

    goto/16 :goto_19

    .line 1263
    .restart local v56       #STORAGE_MML:I
    :cond_57
    const/16 v32, -0x1

    goto/16 :goto_1a

    .line 1284
    .restart local v32       #MSG_PRVL:I
    .restart local v58       #USE_SIGNATURE:Ljava/lang/String;
    :cond_58
    const-string v2, "MSG_Use_Signature"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1285
    const-string v2, "pref_key_signature_enabled"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1b

    .line 1298
    :cond_59
    const-string v2, "MSG_Signature_Show"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1299
    const-string v2, "pref_key_signature_settings"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1c

    .line 1311
    .restart local v54       #SMS_WAP_PUSH:Ljava/lang/String;
    :cond_5a
    const-string v2, "SMS_Wap_Push_Support"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1d

    .line 1322
    .restart local v44       #SMS_EMPTY_DRAFT:Ljava/lang/String;
    :cond_5b
    const-string v2, "SMS_Empty_Draft_Support"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1e

    .line 1333
    .restart local v52       #SMS_TO_EMAIL:Ljava/lang/String;
    :cond_5c
    const-string v2, "SMS_To_Email_Support"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1f

    .line 1351
    .restart local v40       #SMS_CLASS_ZERO_SAVE:Ljava/lang/String;
    .restart local v43       #SMS_EMAIL_SERVER_NUMBER:Ljava/lang/String;
    :cond_5d
    const-string v2, "SMS_Class_Zero_Save_Support"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_20

    .line 1362
    .restart local v41       #SMS_CONCATENATED_EMAIL_SMS:Ljava/lang/String;
    :cond_5e
    const-string v2, "SMS_Concatenated_Email_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_21

    .line 1373
    .restart local v51       #SMS_SUBJECT:Ljava/lang/String;
    :cond_5f
    const-string v2, "SMS_Subject_Support"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_22

    .line 1385
    .restart local v50       #SMS_SMSC_EDITABLE:Ljava/lang/String;
    :cond_60
    const-string v2, "SMS_SMSC_Editable"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1386
    const-string v2, "pref_key_sms_center"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_23

    .line 1397
    .restart local v45       #SMS_EMPTY_SMS:Ljava/lang/String;
    :cond_61
    const-string v2, "SMS_Empty_SMS_Support"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_24

    .line 1415
    .restart local v46       #SMS_HIGH_PRIORITY:Ljava/lang/String;
    .restart local v53       #SMS_USE_DEVICE_TIME:Ljava/lang/String;
    :cond_62
    const-string v2, "SMS_Use_Device_Time"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_25

    .line 1427
    .restart local v39       #SMS_CHARACTERS:Ljava/lang/String;
    :cond_63
    const-string v2, "SMS_Characters"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1428
    const-string v2, "pref_key_sms_characters"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_26

    .line 1447
    .restart local v38       #SMS_CALLBACK_NUMBER:Ljava/lang/String;
    .restart local v49       #SMS_PRIORITY:Ljava/lang/String;
    :cond_64
    const-string v2, "SMS_Callback_Number"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1448
    const-string v2, "pref_key_sms_callback"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_27

    .line 1460
    .restart local v10       #MMS_CALLBACK_NUMBER:Ljava/lang/String;
    :cond_65
    const-string v2, "MMS_Callback_Number"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1461
    const-string v2, "pref_key_mms_callback"

    const/4 v4, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_28

    .line 1512
    .restart local v14       #MMS_FORCE_DISPLAY_SLIDESHOW:Ljava/lang/String;
    .restart local v22       #MMS_RM:Ljava/lang/String;
    .restart local v28       #MMS_SHOW_ALL_TEXT:Ljava/lang/String;
    .restart local v29       #MMS_SHOW_CONNECTION_SETTING:Ljava/lang/String;
    .restart local v33       #NTF_DISPLAY:Ljava/lang/String;
    .restart local v34       #RECIPT_ITN:Ljava/lang/String;
    :cond_66
    const-string v2, "MMS_Show_Restricted_Mode"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_29

    .line 1515
    :cond_67
    const-string v2, "pref_key_mms_restricted_mode"

    move-object/from16 v0, v71

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_29

    .line 1533
    .restart local v8       #CMAS_ENABLE:Ljava/lang/String;
    :cond_68
    const-string v2, "MSG_General_CMAS_Support"

    move-object/from16 v0, v62

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1534
    const-string v8, "falseStr"

    goto/16 :goto_2a

    .line 1536
    :cond_69
    const/16 v60, 0x0

    goto/16 :goto_2b

    .line 1562
    .restart local v60       #bCMASsupport:Z
    .restart local v69       #newMsgRule:Ljava/lang/String;
    :cond_6a
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/MmsApp;->applyNewMsgNotifyRule(Z)V

    .line 1563
    const-string v2, "MSG_new_msg_notify_rule_key"

    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2c

    .line 1577
    .end local v3           #audioUri:Landroid/net/Uri;
    .end local v5           #AudioWhereStr:Ljava/lang/String;
    .end local v8           #CMAS_ENABLE:Ljava/lang/String;
    .end local v9           #MMS_AR:Ljava/lang/String;
    .end local v10           #MMS_CALLBACK_NUMBER:Ljava/lang/String;
    .end local v11           #MMS_DR:Ljava/lang/String;
    .end local v12           #MMS_DSD:I
    .end local v13           #MMS_FN:Ljava/lang/String;
    .end local v14           #MMS_FORCE_DISPLAY_SLIDESHOW:Ljava/lang/String;
    .end local v15           #MMS_MRN:I
    .end local v16           #MMS_MSN:I
    .end local v17           #MMS_NS:Ljava/lang/String;
    .end local v18           #MMS_PN:Ljava/lang/String;
    .end local v19           #MMS_PRN:Ljava/lang/String;
    .end local v20           #MMS_Priority:Ljava/lang/String;
    .end local v21           #MMS_RAR:Ljava/lang/String;
    .end local v22           #MMS_RM:Ljava/lang/String;
    .end local v23           #MMS_RN:Ljava/lang/String;
    .end local v24           #MMS_RNS:Ljava/lang/String;
    .end local v25           #MMS_RP:Ljava/lang/String;
    .end local v26           #MMS_RR:Ljava/lang/String;
    .end local v27           #MMS_RV:Ljava/lang/String;
    .end local v28           #MMS_SHOW_ALL_TEXT:Ljava/lang/String;
    .end local v29           #MMS_SHOW_CONNECTION_SETTING:Ljava/lang/String;
    .end local v30           #MMS_SN:Ljava/lang/String;
    .end local v31           #MMS_V:Ljava/lang/String;
    .end local v32           #MSG_PRVL:I
    .end local v33           #NTF_DISPLAY:Ljava/lang/String;
    .end local v34           #RECIPT_ITN:Ljava/lang/String;
    .end local v35           #RECIPT_SCH:Ljava/lang/String;
    .end local v36           #RECIPT_SEA:Ljava/lang/String;
    .end local v37           #RECIPT_SSMMH:Ljava/lang/String;
    .end local v38           #SMS_CALLBACK_NUMBER:Ljava/lang/String;
    .end local v39           #SMS_CHARACTERS:Ljava/lang/String;
    .end local v40           #SMS_CLASS_ZERO_SAVE:Ljava/lang/String;
    .end local v41           #SMS_CONCATENATED_EMAIL_SMS:Ljava/lang/String;
    .end local v42           #SMS_DR:Ljava/lang/String;
    .end local v43           #SMS_EMAIL_SERVER_NUMBER:Ljava/lang/String;
    .end local v44           #SMS_EMPTY_DRAFT:Ljava/lang/String;
    .end local v45           #SMS_EMPTY_SMS:Ljava/lang/String;
    .end local v46           #SMS_HIGH_PRIORITY:Ljava/lang/String;
    .end local v47           #SMS_MCN:I
    .end local v48           #SMS_MRN:I
    .end local v49           #SMS_PRIORITY:Ljava/lang/String;
    .end local v50           #SMS_SMSC_EDITABLE:Ljava/lang/String;
    .end local v51           #SMS_SUBJECT:Ljava/lang/String;
    .end local v52           #SMS_TO_EMAIL:Ljava/lang/String;
    .end local v53           #SMS_USE_DEVICE_TIME:Ljava/lang/String;
    .end local v54           #SMS_WAP_PUSH:Ljava/lang/String;
    .end local v55           #STORAGE_DOM:Ljava/lang/String;
    .end local v56           #STORAGE_MML:I
    .end local v57           #STORAGE_TML:I
    .end local v58           #USE_SIGNATURE:Ljava/lang/String;
    .end local v59           #audioCursor:Landroid/database/Cursor;
    .end local v60           #bCMASsupport:Z
    .end local v62           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v65           #msgSize1:Ljava/lang/String;
    .end local v66           #msgSize2:Ljava/lang/String;
    .end local v67           #msgSize3:Ljava/lang/String;
    .end local v68           #msgSizeChoose:Ljava/lang/String;
    .end local v69           #newMsgRule:Ljava/lang/String;
    .end local v70           #pref:Landroid/content/SharedPreferences;
    .end local v71           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v73           #soundfile:Ljava/lang/String;
    :cond_6b
    if-eqz v74, :cond_2b

    .line 1578
    invoke-interface/range {v74 .. v74}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v62

    .line 1579
    .restart local v62       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1580
    const-string v2, "Do_Customize"

    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1581
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2d
.end method

.method private getSignatureCustomization(Landroid/os/Bundle;)V
    .locals 10
    .parameter "customizationBundle"

    .prologue
    .line 482
    if-eqz p1, :cond_2

    .line 483
    const-string v7, "Message_Signature"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 484
    .local v1, ST:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    const-string v8, "com.android.mms.customizationSignature"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 486
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 487
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 488
    if-eqz v1, :cond_1

    .line 489
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plenty_set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 492
    .local v5, item:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 493
    const-string v7, "Locale"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, Locale:Ljava/lang/String;
    const-string v7, "Signature_Text"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, SignatureText:Ljava/lang/String;
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    .end local v0           #Locale:Ljava/lang/String;
    .end local v2           #SignatureText:Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 499
    .end local v4           #i:I
    .end local v5           #item:Landroid/os/Bundle;
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    .end local v1           #ST:Landroid/os/Bundle;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method private static keepkeyvalue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1610
    sget-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    .line 1618
    :goto_0
    sget-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    sget-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    const-string v0, "Cust_MMSMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepkeyvalue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void

    .line 1615
    :cond_0
    sget-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralkeysb:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    sget-object v0, Lcom/android/mms/MessagesCustomizeService;->mGeneralvaluesb:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private readDatafromCustomizeDB()Landroid/os/Bundle;
    .locals 13

    .prologue
    .line 330
    const-string v0, "content://customization_settings/SettingTable/application_MessageConfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 331
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 332
    .local v8, customizationBundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 336
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/MessagesCustomizeService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 338
    const-string v0, "Cust_MMSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-eqz v7, :cond_1

    .line 340
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 343
    .local v6, columnIndex:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 345
    .local v10, data:[B
    sget-boolean v0, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Cust_MMSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessagesCustomizeReceiver columnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 348
    .local v12, parcel:Landroid/os/Parcel;
    const/4 v0, 0x0

    array-length v2, v10

    invoke-virtual {v12, v10, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 349
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 350
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .local v9, customizationBundle:Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 357
    .end local v6           #columnIndex:I
    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .end local v10           #data:[B
    .end local v12           #parcel:Landroid/os/Parcel;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    :cond_1
    if-eqz v7, :cond_2

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_2
    const/4 v7, 0x0

    .line 363
    :goto_0
    return-object v8

    .line 354
    :catch_0
    move-exception v11

    .line 355
    .local v11, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-boolean v0, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "Cust_MMSMS"

    const-string v2, "get customization fail"

    invoke-static {v0, v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    :cond_3
    if-eqz v7, :cond_4

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_4
    const/4 v7, 0x0

    .line 361
    goto :goto_0

    .line 357
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_5

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_5
    const/4 v7, 0x0

    throw v0

    .line 357
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v6       #columnIndex:I
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    .restart local v10       #data:[B
    .restart local v12       #parcel:Landroid/os/Parcel;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_2

    .line 354
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private setFOTAsetting()V
    .locals 24

    .prologue
    .line 665
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 666
    .local v4, bHasCastException:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.android.mms_preferences_old"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 669
    .local v13, pref_old:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.android.mms_preferences"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 672
    .local v11, pref:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.android.mms.customizationBySIM"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 676
    .local v16, sp_sim:Landroid/content/SharedPreferences;
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 678
    .local v15, ret:Ljava/lang/Boolean;
    if-eqz v11, :cond_0

    if-nez v13, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 691
    .local v12, prefEdit:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v13}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v14

    .line 693
    .local v14, prefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 694
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 695
    .local v19, strValue:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 696
    .local v20, strkey:Ljava/lang/String;
    const/16 v17, 0x0

    .line 697
    .local v17, strErr:Ljava/lang/String;
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_3

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "F strkey="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_3
    const-string v21, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 705
    :cond_4
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_5

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FOTAputBoolean key="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",Val="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 755
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #prefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v17           #strErr:Ljava/lang/String;
    .end local v19           #strValue:Ljava/lang/String;
    .end local v20           #strkey:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 756
    .local v5, e:Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_6

    const-string v21, "Cust_MMSMS"

    const-string v22, "!setFOTAsetting"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 760
    .end local v5           #e:Ljava/lang/Exception;
    :goto_2
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_7

    const-string v21, "Cust_MMSMS"

    const-string v22, "FOTAputString mediaUpdateRequest..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/MmsRingtonePreference;->mediaUpdateRequest(Landroid/content/Context;)V

    .line 762
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    sput-object v21, Lcom/android/mms/MessagesCustomizeService;->bFota_finish:Ljava/lang/Boolean;

    .line 764
    if-eqz v16, :cond_a

    .line 766
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 767
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v21, Lcom/android/mms/MessagesCustomizeService;->mbCustomizeInitialed:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 769
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_8

    const-string v21, "Cust_MMSMS"

    const-string v22, "FOTAputString mbCustomizeInitialed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_8
    const-string v21, "Finished_Customize"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 771
    const-string v21, "Finished_General_Customize"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 774
    :cond_9
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 778
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_a
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.android.mms_preferences_old"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v8, file:Ljava/io/File;
    if-eqz v8, :cond_b

    .line 780
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 781
    :cond_b
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_c

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FOTAputString filedelete ret="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->UpdateFOTADataFormat()V

    goto/16 :goto_0

    .line 717
    .end local v8           #file:Ljava/io/File;
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v14       #prefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v17       #strErr:Ljava/lang/String;
    .restart local v19       #strValue:Ljava/lang/String;
    .restart local v20       #strkey:Ljava/lang/String;
    :cond_d
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 718
    .local v18, strTest:Ljava/lang/String;
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_e

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "strTest="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_e
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_f

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FOTAputString key="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",Val="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_f
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 729
    .end local v18           #strTest:Ljava/lang/String;
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 731
    const-string v21, "java.lang.Integer"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 733
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 735
    .local v10, intTest:I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v12, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 736
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_10

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "intTest="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .end local v10           #intTest:I
    :cond_10
    :goto_4
    const/16 v17, 0x0

    .line 748
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 723
    :catch_1
    move-exception v5

    .line 724
    .local v5, e:Ljava/lang/ClassCastException;
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_11

    const-string v21, "Cust_MMSMS"

    const-string v22, "!getString....."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    :cond_11
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 726
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 739
    .end local v5           #e:Ljava/lang/ClassCastException;
    :cond_12
    const-string v21, "java.lang.Long"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 741
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-wide/16 v22, -0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 743
    .local v3, LongTest:Ljava/lang/Long;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 744
    sget-boolean v21, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v21, :cond_10

    const-string v21, "Cust_MMSMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LongTest="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 754
    .end local v3           #LongTest:Ljava/lang/Long;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v17           #strErr:Ljava/lang/String;
    .end local v19           #strValue:Ljava/lang/String;
    .end local v20           #strkey:Ljava/lang/String;
    :cond_13
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public static setSDBSoundSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "soundfile"

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, c:Landroid/database/Cursor;
    const-string v3, ""

    .line 1594
    .local v3, strSoundUri:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;->refType:Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;

    invoke-virtual {v6}, Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1596
    .local v2, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1597
    .local v4, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;->soundUri:Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/android/mms/MessagesCustomizeService$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/MessagesCustomizeService;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1601
    :catch_0
    move-exception v1

    .line 1602
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Cust_MMSMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSDBSoundSetting Exception ex= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUpgradeRingtone(Landroid/content/Context;)V
    .locals 7
    .parameter "cxt"

    .prologue
    .line 1660
    const-string v4, "com.android.mms_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1662
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1664
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_received_ringtone"

    const-string v5, " "

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1665
    .local v3, str:Ljava/lang/String;
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone rec notify sound >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MmsRingtonePreference;->getRecRing()Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, ring:Ljava/lang/String;
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUpgradeRingtone rec notify sound(new) >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_1
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone old_RecRingtone >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/MmsRingtonePreference;->old_RecRingtone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_2
    if-eqz v2, :cond_4

    sget-object v4, Lcom/android/mms/ui/MmsRingtonePreference;->old_RecRingtone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1671
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "Cust_MMSMS"

    const-string v5, "Set RECEIVED_NOTIFICATION_RINGTONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_3
    const-string v4, "pref_key_received_ringtone"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1676
    :cond_4
    const-string v4, "pref_key_sent_ringtone"

    const-string v5, " "

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1677
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone sent notify sound >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MmsRingtonePreference;->getSentRing()Ljava/lang/String;

    move-result-object v2

    .line 1679
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone sent notify sound(new) >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_6
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone old_SentRingtone >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/MmsRingtonePreference;->old_SentRingtone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_7
    if-eqz v2, :cond_9

    sget-object v4, Lcom/android/mms/ui/MmsRingtonePreference;->old_SentRingtone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1682
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_8

    const-string v4, "Cust_MMSMS"

    const-string v5, "Set SENT_NOTIFICATION_RINGTONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_8
    const-string v4, "pref_key_sent_ringtone"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1686
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1687
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_a

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone vvm rec notify sound >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_a
    const-string v4, "pref_key_vvm_notification_ringtone"

    const-string v5, " "

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1689
    invoke-static {}, Lcom/android/mms/ui/MmsRingtonePreference;->getVVMRecRing()Ljava/lang/String;

    move-result-object v2

    .line 1690
    sget-boolean v4, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v4, :cond_b

    const-string v4, "Cust_MMSMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeRingtone vvm rec notify sound(new) >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_b
    if-eqz v2, :cond_c

    sget-object v4, Lcom/android/mms/ui/MmsRingtonePreference;->old_VVMRecRingtone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1692
    const-string v4, "pref_key_vvm_notification_ringtone"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1695
    :cond_c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1696
    return-void
.end method

.method private static updateMsgGeneralDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "keystr"
    .parameter "valuestr"

    .prologue
    .line 1626
    const-string v0, "key"

    .line 1627
    .local v0, KEY:Ljava/lang/String;
    const-string v1, "keyvalue"

    .line 1629
    .local v1, KEYVALUE:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1630
    .local v4, keyarray:[Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1631
    .local v8, valuearray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1634
    .local v3, key:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v4

    if-ge v2, v9, :cond_1

    .line 1635
    if-nez v3, :cond_0

    .line 1636
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1634
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1638
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1640
    :cond_1
    const-string v9, "content://htcmsggeneral/general"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1641
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1642
    .local v7, v:Landroid/content/ContentValues;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1643
    .local v5, selection:Ljava/lang/String;
    const-string v9, "Cust_MMSMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generic provider delete selection is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v5, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1646
    const/4 v2, 0x0

    :goto_2
    array-length v9, v4

    if-ge v2, v9, :cond_3

    .line 1647
    aget-object v9, v8, v2

    if-eqz v9, :cond_2

    .line 1648
    const-string v9, "Cust_MMSMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMsgGeneralDB key/value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v9, "key"

    aget-object v10, v4, v2

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string v9, "keyvalue"

    aget-object v10, v8, v2

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1646
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1655
    :cond_3
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1656
    return-void
.end method


# virtual methods
.method protected doInBackground(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, action:Ljava/lang/String;
    sget-boolean v6, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "Cust_MMSMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    const/4 v2, 0x0

    .line 375
    .local v2, customizationBundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 379
    .local v3, isFota:Ljava/lang/Boolean;
    const-string v6, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, reason:Ljava/lang/String;
    const-string v6, "Jerry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageCustomizeReceiver reason >>>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz v5, :cond_1

    const-string v6, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/MessagesCustomizeService;->readDatafromCustomizeDB()Landroid/os/Bundle;

    move-result-object v2

    .line 388
    if-eqz v2, :cond_3

    .line 389
    invoke-direct {p0, v2}, Lcom/android/mms/MessagesCustomizeService;->getQuickText2DB(Landroid/os/Bundle;)V

    .line 390
    invoke-direct {p0, v2}, Lcom/android/mms/MessagesCustomizeService;->getSignatureCustomization(Landroid/os/Bundle;)V

    .line 391
    invoke-direct {p0, v2}, Lcom/android/mms/MessagesCustomizeService;->getSettingCustomization(Landroid/os/Bundle;)V

    .line 392
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/android/mms/MessagesCustomizeService;->setFOTAsetting()V

    .line 398
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/mms/MessagesCustomizeService;->getCBsetting2DB(Landroid/os/Bundle;)V

    .line 402
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 403
    .local v1, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v4

    .line 404
    .local v4, msgSizeLimit:I
    iget-object v6, p0, Lcom/android/mms/MessagesCustomizeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pref_key_mms_max_size"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    .end local v1           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v4           #msgSizeLimit:I
    :goto_0
    return-void

    .line 409
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/mms/MessagesCustomizeService;->getCBsetting2DB(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 236
    sget-boolean v2, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v2, :cond_0

    .line 237
    const-string v2, "Cust_MMSMS"

    const-string v3, "1-Creating MessagesCustomizeService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MessagesCustomizeService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, thread:Landroid/os/HandlerThread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 242
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 244
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 245
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;

    invoke-direct {v2, p0, v0, p0}, Lcom/android/mms/MessagesCustomizeService$ServiceHandler;-><init>(Lcom/android/mms/MessagesCustomizeService;Landroid/os/Looper;Landroid/app/Service;)V

    iput-object v2, p0, Lcom/android/mms/MessagesCustomizeService;->mServiceHandler:Lcom/android/mms/MessagesCustomizeService$ServiceHandler;

    .line 247
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/mms/MessagesCustomizeService;->LOG:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "Cust_MMSMS"

    const-string v1, "Destroying TransactionService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 251
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return v3

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/mms/MessagesCustomizeService;->mServiceHandler:Lcom/android/mms/MessagesCustomizeService$ServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
