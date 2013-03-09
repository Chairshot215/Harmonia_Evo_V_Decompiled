.class public Lcom/android/settings/ApnSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$4;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static DBG:Z = false

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x4

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final READONLY:Ljava/lang/String; = "readonly"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final STATE:I = 0x5

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field enterOperatorPicker:Z

.field private mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

.field private mHasRegistered:Z

.field private mIsMVNO:Z

.field private mLastKey:Ljava/lang/String;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPreCMWAPKey:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    .line 92
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    .line 115
    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mPreCMWAPKey:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    .line 646
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/ApnSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    return v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method private fillList()V
    .locals 24

    .prologue
    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 293
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    if-nez v2, :cond_9

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v23, "_id"

    aput-object v23, v4, v7

    const/4 v7, 0x1

    const-string v23, "name"

    aput-object v23, v4, v7

    const/4 v7, 0x2

    const-string v23, "apn"

    aput-object v23, v4, v7

    const/4 v7, 0x3

    const-string v23, "type"

    aput-object v23, v4, v7

    const/4 v7, 0x4

    const-string v23, "insert_by"

    aput-object v23, v4, v7

    const/4 v7, 0x5

    const-string v23, "state"

    aput-object v23, v4, v7

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 322
    .local v10, cursor:Landroid/database/Cursor;
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceGroup;

    .line 323
    .local v9, apnList:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 325
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v15, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_f

    .line 330
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 331
    .local v16, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 333
    .local v14, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 334
    .local v22, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 335
    .local v13, insertBy:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 337
    .local v21, state:Ljava/lang/String;
    new-instance v18, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 339
    .local v18, pref:Lcom/android/settings/ApnPreference;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 343
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 345
    const/4 v11, 0x1

    .line 346
    .local v11, editable:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-ne v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_1

    .line 348
    if-eqz v13, :cond_1

    const-string v2, "internal"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "external"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    const/4 v11, 0x0

    .line 352
    :cond_1
    if-eqz v22, :cond_3

    const-string v2, "netshare"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dun"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v13, :cond_3

    const-string v2, "interanl"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    const/4 v11, 0x0

    .line 369
    :cond_3
    if-eqz v21, :cond_4

    const-string v2, "readonly"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    const/4 v11, 0x0

    .line 385
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 388
    if-eqz v22, :cond_5

    const-string v2, "*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "default"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    const/16 v20, 0x1

    .line 390
    .local v20, selectable:Z
    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 391
    if-eqz v20, :cond_d

    .line 393
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_6

    if-eqz v13, :cond_6

    .line 394
    const-string v2, "cmwap"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/ApnSettings;->mPreCMWAPKey:Ljava/lang/String;

    .line 399
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 404
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_7

    .line 405
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    .line 413
    :cond_7
    :goto_3
    if-eqz v21, :cond_c

    .line 415
    const-string v2, "hidden"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 417
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 442
    :cond_8
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 303
    .end local v8           #apn:Ljava/lang/String;
    .end local v9           #apnList:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #editable:Z
    .end local v13           #insertBy:Ljava/lang/String;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #pref:Lcom/android/settings/ApnPreference;
    .end local v20           #selectable:Z
    .end local v21           #state:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 305
    .local v17, op:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 388
    .end local v17           #op:Ljava/lang/String;
    .restart local v8       #apn:Ljava/lang/String;
    .restart local v9       #apnList:Lcom/htc/preference/HtcPreferenceGroup;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #editable:Z
    .restart local v13       #insertBy:Ljava/lang/String;
    .restart local v14       #key:Ljava/lang/String;
    .restart local v15       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .restart local v16       #name:Ljava/lang/String;
    .restart local v18       #pref:Lcom/android/settings/ApnPreference;
    .restart local v21       #state:Ljava/lang/String;
    .restart local v22       #type:Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 410
    .restart local v20       #selectable:Z
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    goto :goto_3

    .line 422
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_4

    .line 430
    :cond_d
    if-eqz v21, :cond_e

    .line 432
    const-string v2, "hidden"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 434
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 439
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 444
    .end local v8           #apn:Ljava/lang/String;
    .end local v11           #editable:Z
    .end local v13           #insertBy:Ljava/lang/String;
    .end local v14           #key:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #pref:Lcom/android/settings/ApnPreference;
    .end local v20           #selectable:Z
    .end local v21           #state:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :cond_f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 446
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/preference/HtcPreference;

    .line 447
    .local v19, preference:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5

    .line 450
    .end local v19           #preference:Lcom/htc/preference/HtcPreference;
    :cond_10
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    .line 451
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 139
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone$DataState;

    .line 143
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 682
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    .line 683
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.apn.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 573
    const/4 v7, 0x0

    .line 575
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 577
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 579
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 581
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    return-object v7
.end method

.method private printAPNData()V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    .line 709
    :cond_0
    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 586
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 587
    sput-boolean v4, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 589
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 590
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 594
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 597
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 601
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 607
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 564
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 567
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    .line 716
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 156
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 669
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 670
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 671
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 672
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 675
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0a50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 466
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a59

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    return v4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->unregisterReceiver()V

    .line 700
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 701
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 483
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 476
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 480
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 284
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->unregisterReceiver()V

    .line 288
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v8, 0x7f0c002e

    const v7, 0x1080027

    const v6, 0x1040013

    .line 499
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(): HtcPreference - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newValue - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newValue type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 507
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_3

    move-object v2, p2

    .line 509
    check-cast v2, Ljava/lang/String;

    .line 510
    .local v2, value:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 512
    .local v1, tManager:Lcom/htc/service/HtcTelephonyManager;
    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;Ljava/lang/String;Lcom/htc/service/HtcTelephonyManager;)V

    .line 533
    .local v0, dialogListener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mPreCMWAPKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c073b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    .line 560
    .end local v0           #dialogListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #tManager:Lcom/htc/service/HtcTelephonyManager;
    .end local v2           #value:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 542
    .restart local v0       #dialogListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v1       #tManager:Lcom/htc/service/HtcTelephonyManager;
    .restart local v2       #value:Ljava/lang/String;
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mPreCMWAPKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 543
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c073c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    goto :goto_0

    .line 551
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 552
    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;

    goto :goto_0

    .line 555
    .end local v0           #dialogListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #tManager:Lcom/htc/service/HtcTelephonyManager;
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 492
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 493
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 494
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 495
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/16 v14, 0x3e9

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 161
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v13

    const-string v4, "operator"

    aput-object v4, v2, v12

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v11, 0x1

    .line 180
    .local v11, smartMvno:Z
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    .line 181
    const/4 v11, 0x0

    .line 184
    :cond_0
    if-eqz v6, :cond_5

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v11, :cond_4

    .line 189
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    const-string v0, "operator"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, operators:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iput-boolean v13, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    .line 195
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v10           #operators:Ljava/lang/String;
    :cond_2
    move v0, v13

    .line 185
    goto :goto_0

    .line 199
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_4

    .line 200
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear MVNO setting op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    const-string v9, ""

    .line 205
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    if-nez v0, :cond_6

    .line 209
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    const-string v9, ""

    .line 217
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->printAPNData()V

    .line 222
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_8

    .line 224
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/OperatorPicker;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v8, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v8           #intent:Landroid/content/Intent;
    :cond_7
    :goto_2
    return-void

    .line 229
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 240
    .end local v8           #intent:Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->registerReceiver()V

    .line 243
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_b

    .line 244
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 248
    const/16 v0, 0x3e9

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    .line 249
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "ApnSettings"

    const-string v1, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :cond_9
    :goto_3
    const-string v0, ""

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 250
    :catch_1
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "ApnSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume.error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_a

    const-string v0, "no error message"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 256
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b
    invoke-virtual {p0, v14}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_3
.end method

.method resetTextViewsFocused()V
    .locals 4

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 455
    .local v0, capacity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTextViewsFocusable(Z)V

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method
