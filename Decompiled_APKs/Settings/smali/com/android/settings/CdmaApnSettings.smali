.class public Lcom/android/settings/CdmaApnSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CdmaApnSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CdmaApnSettings$3;,
        Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;
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

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://cdmaapn/carriers/preferapn"

.field public static final READONLY:Ljava/lang/String; = "readonly"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://cdmaapn/carriers/restore"

.field private static final STATE:I = 0x5

.field static final TAG:Ljava/lang/String; = "CdmaApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field enterOperatorPicker:Z

.field private mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

.field private mHasRegistered:Z

.field private mIsMVNO:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    .line 89
    const-string v0, "content://cdmaapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "content://cdmaapn/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    .line 111
    new-instance v0, Lcom/android/settings/CdmaApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnSettings$1;-><init>(Lcom/android/settings/CdmaApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    .line 571
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/settings/CdmaApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/CdmaApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/CdmaApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    return v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/CdmaApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CdmaApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method private fillList()V
    .locals 24

    .prologue
    .line 283
    const/4 v5, 0x0

    .line 284
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 285
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    if-nez v2, :cond_8

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

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

    .line 314
    .local v10, cursor:Landroid/database/Cursor;
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceGroup;

    .line 315
    .local v9, apnList:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 317
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v15, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 320
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_e

    .line 322
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 326
    .local v22, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, insertBy:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 329
    .local v21, state:Ljava/lang/String;
    new-instance v18, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 331
    .local v18, pref:Lcom/android/settings/ApnPreference;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 335
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/ApnPreference;->setCdma()V

    .line 336
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 338
    const/4 v11, 0x1

    .line 339
    .local v11, editable:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-ne v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_1

    .line 341
    if-eqz v13, :cond_1

    const-string v2, "internal"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "external"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    const/4 v11, 0x0

    .line 345
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

    .line 348
    const/4 v11, 0x0

    .line 362
    :cond_3
    if-eqz v21, :cond_4

    const-string v2, "readonly"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    const/4 v11, 0x0

    .line 378
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 381
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

    if-eqz v2, :cond_9

    :cond_5
    const/16 v20, 0x1

    .line 383
    .local v20, selectable:Z
    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 384
    if-eqz v20, :cond_c

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 393
    :cond_6
    :goto_3
    if-eqz v21, :cond_b

    .line 395
    const-string v2, "hidden"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 397
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 422
    :cond_7
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 295
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
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mvno_operator"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 297
    .local v17, op:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 381
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
    :cond_9
    const/16 v20, 0x0

    goto :goto_2

    .line 390
    .restart local v20       #selectable:Z
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    goto :goto_3

    .line 402
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_4

    .line 410
    :cond_c
    if-eqz v21, :cond_d

    .line 412
    const-string v2, "hidden"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 414
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 419
    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 424
    .end local v8           #apn:Ljava/lang/String;
    .end local v11           #editable:Z
    .end local v13           #insertBy:Ljava/lang/String;
    .end local v14           #key:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #pref:Lcom/android/settings/ApnPreference;
    .end local v20           #selectable:Z
    .end local v21           #state:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 426
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/preference/HtcPreference;

    .line 427
    .local v19, preference:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5

    .line 430
    .end local v19           #preference:Lcom/htc/preference/HtcPreference;
    :cond_f
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/CdmaApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    .line 431
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 131
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 133
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone$DataState;

    .line 135
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 607
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    .line 608
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
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

    .line 499
    const/4 v7, 0x0

    .line 501
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/CdmaApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 503
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 505
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 507
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 508
    return-object v7
.end method

.method private printAPNData()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CdmaApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    .line 634
    :cond_0
    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 512
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/CdmaApnSettings;->showDialog(I)V

    .line 513
    sput-boolean v4, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    .line 515
    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/CdmaApnSettings;Lcom/android/settings/CdmaApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 520
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 523
    new-instance v1, Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/CdmaApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    .line 527
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 533
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 490
    iput-object p1, p0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 493
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    sget-object v2, Lcom/android/settings/CdmaApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    .line 641
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->addPreferencesFromResource(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 148
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 594
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 595
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 596
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 597
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 600
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

    .line 442
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0a50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 446
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a59

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 449
    return v4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->unregisterReceiver()V

    .line 625
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 626
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 463
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 456
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->addNewApn()V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 454
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
    .line 267
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 276
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->unregisterReceiver()V

    .line 280
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 479
    const-string v0, "CdmaApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): HtcPreference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 483
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/CdmaApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 486
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 472
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 473
    .local v0, pos:I
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 474
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 475
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/16 v14, 0x3e9

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 153
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

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

    .line 164
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

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

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v11, 0x1

    .line 172
    .local v11, smartMvno:Z
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    .line 173
    const/4 v11, 0x0

    .line 176
    :cond_0
    if-eqz v6, :cond_5

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v11, :cond_4

    .line 181
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    const-string v0, "operator"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, operators:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iput-boolean v13, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    .line 187
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v10           #operators:Ljava/lang/String;
    :cond_2
    move v0, v13

    .line 177
    goto :goto_0

    .line 191
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_4

    .line 192
    const-string v0, "CdmaApnSettings"

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

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    const-string v9, ""

    .line 197
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    if-nez v0, :cond_6

    .line 201
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    const-string v9, ""

    .line 209
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->printAPNData()V

    .line 214
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_8

    .line 216
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/OperatorPicker;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v8, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v8           #intent:Landroid/content/Intent;
    :cond_7
    :goto_2
    return-void

    .line 221
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 232
    .end local v8           #intent:Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->registerReceiver()V

    .line 235
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_b

    .line 236
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->fillList()V

    .line 240
    const/16 v0, 0x3e9

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->removeDialog(I)V

    .line 241
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "CdmaApnSettings"

    const-string v1, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_9
    :goto_3
    const-string v0, ""

    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 242
    :catch_1
    move-exception v7

    .line 243
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "CdmaApnSettings"

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

    .line 248
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b
    invoke-virtual {p0, v14}, Lcom/android/settings/CdmaApnSettings;->showDialog(I)V

    goto :goto_3
.end method

.method resetTextViewsFocused()V
    .locals 4

    .prologue
    .line 434
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 435
    .local v0, capacity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTextViewsFocusable(Z)V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method
