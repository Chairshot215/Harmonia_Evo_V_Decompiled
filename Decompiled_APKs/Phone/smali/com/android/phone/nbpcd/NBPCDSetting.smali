.class public Lcom/android/phone/nbpcd/NBPCDSetting;
.super Landroid/app/Activity;
.source "NBPCDSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;
    }
.end annotation


# static fields
.field static final ADD_COUNTRY_DONE:I = 0x1

.field static final ADD_IDD_DONE:I = 0x0

.field public static final CONTENT_URI_MCC_OTA:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final EDIT_COUNTRY_DONE:I = 0x2

.field static final EDIT_IDD_DONE:I = 0x4

.field static final EVENT_ADD_COUNTRY_DONE:I = 0x1

.field static final EVENT_ADD_IDD_DONE:I = 0x0

.field static final EVENT_EDIT_COUNTRY_DONE:I = 0x2

.field static final EVENT_EDIT_IDD_DONE:I = 0x4

.field static final OPTION_MENU_ITEM_EDIT_COUNTRY:I = 0x3

.field static final OPTION_MENU_ITEM_EDIT_IDD:I = 0x4

.field static final OPTION_MENU_ITEM_NEW_COUNTRY:I = 0x1

.field static final OPTION_MENU_ITEM_NEW_IDD:I = 0x2

.field private static final RESULT_DELETE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NBPCDSetting"

.field private static final VIEW_MAP_KEY:Ljava/lang/String; = "IDD"

.field private static bEditMode:Z

.field private static mCountryPos:I

.field private static mCurrentCountry:Ljava/lang/String;

.field private static mCurrentPK:Ljava/lang/String;

.field private static mCustomMcc:I

.field private static mIDDPos:I


# instance fields
.field private final LAST_POS:Ljava/lang/String;

.field private final SET_CUR_COUNTRY:Ljava/lang/String;

.field mCR:Landroid/content/ContentResolver;

.field private mCountryItemSelect:Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;

.field private mCountrySpinner:Lcom/htc/widget/HtcSpinner;

.field private mHandler:Landroid/os/Handler;

.field private mIDDListView:Landroid/widget/ListView;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/nbpcd/MCC_ITEM;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/nbpcd/MCC_ITEM;",
            ">;"
        }
    .end annotation
.end field

.field mMenuButton:Landroid/widget/Button;

.field private mSimpleAdapter:Landroid/widget/SimpleAdapter;

.field mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 69
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    .line 71
    const-string v0, "content://htc.cdma.mcc/MccOTA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    .line 76
    sput-boolean v1, Lcom/android/phone/nbpcd/NBPCDSetting;->bEditMode:Z

    .line 83
    const/16 v0, 0x3ff

    sput v0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCustomMcc:I

    .line 85
    sput v3, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    .line 86
    sput v3, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    .line 597
    new-instance v0, Lcom/android/phone/nbpcd/NBPCDSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/nbpcd/NBPCDSetting$4;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V

    iput-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 609
    const-string v0, "Current_Country"

    iput-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->SET_CUR_COUNTRY:Ljava/lang/String;

    .line 610
    const-string v0, "Last_Position"

    iput-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->LAST_POS:Ljava/lang/String;

    .line 748
    new-instance v0, Lcom/android/phone/nbpcd/NBPCDSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/nbpcd/NBPCDSetting$5;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V

    iput-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/phone/nbpcd/NBPCDSetting;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->handleAddCountry(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->handleEditCountry(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->handleEditIDD(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/nbpcd/NBPCDSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting;->changeDefaultIDDValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/phone/nbpcd/NBPCDSetting;Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/nbpcd/NBPCDSetting;[Lcom/android/phone/nbpcd/IDD_ITEM;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting;->setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/phone/nbpcd/NBPCDSetting;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->handleAddIDD(IILandroid/content/Intent;)V

    return-void
.end method

.method private changeDefaultCountry()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 684
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v4, valueCr:Landroid/content/ContentValues;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "TRUE"

    aput-object v11, v6, v10

    .line 686
    .local v6, whereArgs:[Ljava/lang/String;
    const-string v8, "DefCountry=?"

    .line 687
    .local v8, whereClause:Ljava/lang/String;
    const-string v10, "DefCountry"

    const-string v11, "FALSE"

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v10, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    invoke-virtual {v10, v11, v4, v8, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 690
    sget-boolean v10, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "NBPCDSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Change to Default country "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 693
    .local v5, valueCrDef:Landroid/content/ContentValues;
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    aput-object v11, v7, v10

    .line 694
    .local v7, whereArgsDef:[Ljava/lang/String;
    const-string v9, "PK=?"

    .line 695
    .local v9, whereClauseDef:Ljava/lang/String;
    const-string v10, "DefCountry"

    const-string v11, "TRUE"

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v10, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    invoke-virtual {v10, v11, v5, v9, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 699
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/phone/nbpcd/NBPCDSetting;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 700
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 701
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "Current_Country"

    sget-object v11, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 702
    const-string v10, "Last_Position"

    sget v11, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 703
    sget-boolean v10, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v10, :cond_1

    const-string v10, "NBPCDSetting"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Save reference country "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 714
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    .end local v4           #valueCr:Landroid/content/ContentValues;
    .end local v5           #valueCrDef:Landroid/content/ContentValues;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v7           #whereArgsDef:[Ljava/lang/String;
    .end local v8           #whereClause:Ljava/lang/String;
    .end local v9           #whereClauseDef:Ljava/lang/String;
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const v10, 0x104039d

    const/16 v11, 0x1388

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 707
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 708
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v3           #toast:Landroid/widget/Toast;
    :catch_1
    move-exception v0

    .line 709
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v10, "NBPCDSetting"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const v10, 0x7f0e0141

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 711
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v0

    .line 712
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v10, "NBPCDSetting"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeDefaultIDDValue(Ljava/lang/String;)V
    .locals 13
    .parameter "defIDD"

    .prologue
    const/4 v12, 0x1

    .line 630
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v2, valueCr:Landroid/content/ContentValues;
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    aput-object v9, v4, v8

    .line 632
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v6, "PK=?"

    .line 633
    .local v6, whereClause:Ljava/lang/String;
    const-string v8, "PK"

    sget-object v9, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v8, "DefIDD"

    const-string v9, "FALSE"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v8, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v2, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 637
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v3, valueCrDef:Landroid/content/ContentValues;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object p1, v5, v8

    .line 639
    .local v5, whereArgsDef:[Ljava/lang/String;
    const-string v7, "PK=? AND IDD=?"

    .line 640
    .local v7, whereClauseDef:Ljava/lang/String;
    const-string v8, "PK"

    sget-object v9, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v8, "DefIDD"

    const-string v9, "TRUE"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v8, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    invoke-virtual {v8, v9, v3, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 653
    .end local v2           #valueCr:Landroid/content/ContentValues;
    .end local v3           #valueCrDef:Landroid/content/ContentValues;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v5           #whereArgsDef:[Ljava/lang/String;
    .end local v6           #whereClause:Ljava/lang/String;
    .end local v7           #whereClauseDef:Ljava/lang/String;
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const v8, 0x104039d

    const/16 v9, 0x1388

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 646
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 647
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v1           #toast:Landroid/widget/Toast;
    :catch_1
    move-exception v0

    .line 648
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v8, "NBPCDSetting"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const v8, 0x7f0e0141

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 650
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v0

    .line 651
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "NBPCDSetting"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    .locals 2
    .parameter "pk"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 538
    .local v0, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    return-object v0
.end method

.method private getListArray()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/nbpcd/MCC_ITEM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    const/4 v6, 0x0

    .line 543
    .local v6, pathes:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    iget-object v8, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 544
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #pathes:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .restart local v6       #pathes:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    iget-object v8, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 546
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/phone/nbpcd/NBPCDUtility;->getSortedSet(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, sortedkeys:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 549
    .local v1, counter:I
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 550
    .local v3, key:Ljava/lang/String;
    sget-object v8, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 552
    sput v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    .line 553
    sget-boolean v8, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "NBPCDSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v8, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v1, v1, 0x1

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #counter:I
    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #len$:I
    .end local v7           #sortedkeys:[Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private handleAddCountry(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 782
    sget-boolean v2, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NBPCDSetting"

    const-string v3, "Handle Add country"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    if-nez p3, :cond_1

    .line 800
    :goto_0
    return-void

    .line 786
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 787
    invoke-direct {p0, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->inserNewCountryDB(ILandroid/content/Intent;)V

    .line 789
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->initList()V

    .line 790
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->getListArray()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    .line 791
    sget-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v1

    .line 793
    .local v1, tmccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v1}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V

    .line 794
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 797
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 798
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 799
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    sget v3, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto :goto_0
.end method

.method private handleAddIDD(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 772
    sget-boolean v1, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NBPCDSetting"

    const-string v2, "Handle Add IDD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 774
    invoke-direct {p0, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->inserNewIDD(ILandroid/content/Intent;)V

    .line 775
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->initList()V

    .line 776
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v0

    .line 777
    .local v0, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V

    .line 779
    .end local v0           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :cond_1
    return-void
.end method

.method private handleEditCountry(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 802
    sget-boolean v2, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NBPCDSetting"

    const-string v3, "Handle Edit country"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    if-eqz p3, :cond_1

    .line 804
    invoke-direct {p0, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->updateCountryInfo(ILandroid/content/Intent;)V

    .line 806
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 807
    const-string v2, "United States of America:310"

    sput-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    .line 809
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->initList()V

    .line 810
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->getListArray()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    .line 811
    sget-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v0

    .line 812
    .local v0, defMccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/nbpcd/NBPCDSetting;->setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V

    .line 813
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 816
    .local v1, editAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 817
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 818
    iget-object v2, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    sget v3, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 819
    return-void
.end method

.method private handleEditIDD(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 821
    sget-boolean v1, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NBPCDSetting"

    const-string v2, "Handle Edit IDD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    if-nez p3, :cond_1

    .line 829
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/phone/nbpcd/NBPCDSetting;->updateCountryIDD(ILandroid/content/Intent;)V

    .line 826
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->initList()V

    .line 827
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v0

    .line 828
    .local v0, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V

    goto :goto_0
.end method

.method private initList()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 518
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/nbpcd/NBPCDUtility;->project:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 521
    .local v6, Cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 522
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-static {v6, v0}, Lcom/android/phone/nbpcd/NBPCDUtility;->getAllRecord(Landroid/database/Cursor;Ljava/util/HashMap;)I

    move-result v0

    sput v0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCustomMcc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_0
    if-eqz v6, :cond_1

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_1
    return-void

    .line 530
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private inserNewCountryDB(ILandroid/content/Intent;)V
    .locals 15
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 441
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v14

    .line 442
    .local v14, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v14, :cond_0

    if-eqz p2, :cond_0

    .line 444
    sget v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCustomMcc:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCustomMcc:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, mcc:Ljava/lang/String;
    const-string v1, "CountryName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "_"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, pk:Ljava/lang/String;
    const-string v1, "COUNTRYCODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, CountryCode:Ljava/lang/String;
    const-string v1, "IDD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, IDD:Ljava/lang/String;
    const-string v1, "NDD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, NDD:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/phone/nbpcd/MCC_ITEM;->getArea()Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, Area:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNumLength()Ljava/lang/Integer;

    move-result-object v12

    .line 453
    .local v12, NumberLengh:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/android/phone/nbpcd/NBPCDUtility;->insertDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    move-result v13

    .line 455
    .local v13, insertdone:Z
    if-eqz v13, :cond_0

    .line 456
    sput-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    .line 459
    .end local v2           #pk:Ljava/lang/String;
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #country:Ljava/lang/String;
    .end local v5           #CountryCode:Ljava/lang/String;
    .end local v6           #IDD:Ljava/lang/String;
    .end local v7           #NDD:Ljava/lang/String;
    .end local v8           #Area:Ljava/lang/String;
    .end local v12           #NumberLengh:Ljava/lang/Integer;
    .end local v13           #insertdone:Z
    :cond_0
    return-void
.end method

.method private inserNewIDD(ILandroid/content/Intent;)V
    .locals 13
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 463
    sget-object v0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v12

    .line 464
    .local v12, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    .line 466
    invoke-virtual {v12}, Lcom/android/phone/nbpcd/MCC_ITEM;->getMcc()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCounterName()Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, CountryeName:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCounteryCode()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, CountryCode:Ljava/lang/String;
    const-string v0, "IDD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, IDD:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNDD()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, NDD:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/phone/nbpcd/MCC_ITEM;->getArea()Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, Area:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNumLength()Ljava/lang/Integer;

    move-result-object v11

    .line 473
    .local v11, NumberLengh:Ljava/lang/Integer;
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, p0

    move v10, v9

    invoke-static/range {v0 .. v10}, Lcom/android/phone/nbpcd/NBPCDUtility;->insertDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    .line 476
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #CountryeName:Ljava/lang/String;
    .end local v4           #CountryCode:Ljava/lang/String;
    .end local v5           #IDD:Ljava/lang/String;
    .end local v6           #NDD:Ljava/lang/String;
    .end local v7           #Area:Ljava/lang/String;
    .end local v11           #NumberLengh:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private queryDefCountry()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 656
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "TRUE"

    aput-object v0, v4, v1

    .line 657
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v3, "DefCountry=?"

    .line 661
    .local v3, whereClause:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/nbpcd/NBPCDUtility;->project:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 665
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 666
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 668
    .local v10, pk:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 669
    .local v9, mcc:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, country:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 671
    .local v6, CounteryCode:Ljava/lang/String;
    sget-boolean v0, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPCDSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Default Country  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    .end local v6           #CounteryCode:Ljava/lang/String;
    .end local v7           #country:Ljava/lang/String;
    .end local v9           #mcc:Ljava/lang/String;
    .end local v10           #pk:Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 676
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_1
    return-void

    .line 675
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 676
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private setEditable(Landroid/widget/EditText;Z)V
    .locals 0
    .parameter "editText"
    .parameter "enable"

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 573
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 574
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private setupFileListView([Lcom/android/phone/nbpcd/IDD_ITEM;)V
    .locals 9
    .parameter "IDDList"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 583
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 584
    .local v6, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "IDD"

    aget-object v1, p1, v7

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    aget-object v0, p1, v7

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/IDD_ITEM;->isCurrentUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    sput v7, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    .line 582
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 590
    .end local v6           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03002a

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "IDD"

    aput-object v1, v4, v8

    new-array v5, v5, [I

    const v1, 0x7f0800d6

    aput v1, v5, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    .line 593
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 594
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    return-void
.end method

.method private setupHtcHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 97
    const-string v3, "NBPCDSetting"

    const-string v4, "setupHtcHeader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 104
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 108
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/NBPCDSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    .local v0, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 110
    return-void
.end method

.method private updateCountryIDD(ILandroid/content/Intent;)V
    .locals 15
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 480
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v12

    .line 481
    .local v12, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    .line 482
    sget-object v14, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    .line 484
    .local v14, pk:Ljava/lang/String;
    const-string v1, "IDD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 485
    .local v6, modified_IDD:Ljava/lang/String;
    const-string v1, "PRE_IDD_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 487
    .local v13, original_IDD:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v11, v1

    const/4 v1, 0x1

    aput-object v13, v11, v1

    .line 488
    .local v11, whereArgs:[Ljava/lang/String;
    const-string v10, "PK=? AND IDD=?"

    .line 489
    .local v10, whereClause:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/android/phone/nbpcd/NBPCDUtility;->updateDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 492
    .end local v6           #modified_IDD:Ljava/lang/String;
    .end local v10           #whereClause:Ljava/lang/String;
    .end local v11           #whereArgs:[Ljava/lang/String;
    .end local v13           #original_IDD:Ljava/lang/String;
    .end local v14           #pk:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateCountryInfo(ILandroid/content/Intent;)V
    .locals 15
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 495
    sget-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v12

    .line 496
    .local v12, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 498
    sget-boolean v1, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NBPCDSetting"

    const-string v2, "Return to default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    aput-object v2, v13, v1

    .line 500
    .local v13, whereArgs:[Ljava/lang/String;
    const-string v14, "PK=?"

    .line 501
    .local v14, whereClause:Ljava/lang/String;
    invoke-static {p0, v14, v13}, Lcom/android/phone/nbpcd/NBPCDUtility;->deleteDatabase(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 512
    .end local v13           #whereArgs:[Ljava/lang/String;
    .end local v14           #whereClause:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    if-eqz v12, :cond_1

    if-eqz p2, :cond_1

    .line 505
    const-string v1, "CountryName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, country:Ljava/lang/String;
    const-string v1, "COUNTRYCODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, CountryCode:Ljava/lang/String;
    const-string v1, "NDD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, NDD:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/android/phone/nbpcd/NBPCDUtility;->updateDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 415
    sget-boolean v4, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NBPCDSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesst Code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 437
    :goto_0
    :pswitch_0
    return-void

    .line 418
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 419
    .local v1, addIddmsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 422
    .end local v1           #addIddmsg:Landroid/os/Message;
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, addCountrymsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 426
    .end local v0           #addCountrymsg:Landroid/os/Message;
    :pswitch_3
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 427
    .local v2, editCountrymsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 430
    .end local v2           #editCountrymsg:Landroid/os/Message;
    :pswitch_4
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 431
    .local v3, editIDDmsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCR:Landroid/content/ContentResolver;

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->read()V

    .line 121
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->setupHtcHeader()V

    .line 123
    const v5, 0x7f030039

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->setContentView(I)V

    .line 125
    const v5, 0x7f0800f1

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    .line 131
    const v5, 0x7f0800a4

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 132
    .local v4, mViewModeLayout:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, fl:Lcom/htc/widget/HtcFooter;
    new-instance v3, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 134
    .local v3, mSaveButton:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x7f0e013d

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 135
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting$1;

    invoke-direct {v5, p0}, Lcom/android/phone/nbpcd/NBPCDSetting$1;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 154
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    new-instance v6, Lcom/android/phone/nbpcd/NBPCDSetting$2;

    invoke-direct {v6, p0}, Lcom/android/phone/nbpcd/NBPCDSetting$2;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 205
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    new-instance v6, Lcom/android/phone/nbpcd/NBPCDSetting$3;

    invoke-direct {v6, p0}, Lcom/android/phone/nbpcd/NBPCDSetting$3;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->initList()V

    .line 228
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->getListArray()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    .line 231
    const v5, 0x7f0800a7

    invoke-virtual {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    .line 233
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x20900ee

    iget-object v6, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 236
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    const v5, 0x20900af

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 238
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 239
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    sget v6, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 240
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryItemSelect:Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;

    if-nez v5, :cond_0

    .line 241
    new-instance v5, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting;Lcom/android/phone/nbpcd/NBPCDSetting$1;)V

    iput-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryItemSelect:Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;

    .line 243
    :cond_0
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountrySpinner:Lcom/htc/widget/HtcSpinner;

    iget-object v6, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryItemSelect:Lcom/android/phone/nbpcd/NBPCDSetting$CountryItemSelect;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 248
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    const v0, 0x7f0e0105

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 304
    const/4 v0, 0x3

    const v1, 0x7f0e00fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 306
    const/4 v0, 0x2

    const v1, 0x7f0e0104

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 307
    const/4 v0, 0x4

    const v1, 0x7f0e00fd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 407
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 316
    :pswitch_0
    const-string v5, "ANALYTIC_Phone"

    const-string v6, "[NBPCDSetting]New country"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 320
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v3

    .line 325
    .local v3, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v3, :cond_1

    .line 326
    const-string v5, "CountryName"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v5, "iddlist"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/android/phone/nbpcd/NBPCDSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 336
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :pswitch_1
    const-string v5, "ANALYTIC_Phone"

    const-string v6, "[NBPCDSetting]New IDD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 340
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v3

    .line 344
    .restart local v3       #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v3, :cond_2

    .line 345
    const-string v5, "CountryName"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v5, "iddlist"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 356
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :pswitch_2
    const-string v5, "ANALYTIC_Phone"

    const-string v6, "[NBPCDSetting]Edit IDD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    if-ltz v5, :cond_0

    .line 360
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    sget v6, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 362
    .local v1, iddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "IDD"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nbpcd/IDD_ITEM;

    .line 365
    .local v0, iddItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/IDD_ITEM;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v3

    .line 372
    .restart local v3       #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v3, :cond_3

    .line 373
    const-string v5, "CountryName"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v5, "iddlist"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v5, "IDD"

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 387
    .end local v0           #iddItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    .end local v1           #iddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :pswitch_3
    const-string v5, "ANALYTIC_Phone"

    const-string v6, "[NBPCDSetting]Edit country"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 390
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v3

    .line 395
    .restart local v3       #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v3, :cond_4

    .line 396
    const-string v5, "CountryName"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v5, "COUNTRYCODE"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCounteryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v5, "NDD"

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNDD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 270
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    sget v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    if-ltz v5, :cond_0

    .line 274
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDListView:Landroid/widget/ListView;

    sget v6, Lcom/android/phone/nbpcd/NBPCDSetting;->mIDDPos:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 276
    .local v2, iddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "IDD"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/nbpcd/IDD_ITEM;

    .line 277
    .local v1, iddItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    invoke-virtual {v1}, Lcom/android/phone/nbpcd/IDD_ITEM;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1           #iddItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    .end local v2           #iddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 286
    :try_start_1
    sget-object v5, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/nbpcd/NBPCDSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v4

    .line 287
    .local v4, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v4, :cond_1

    .line 288
    invoke-virtual {v4}, Lcom/android/phone/nbpcd/MCC_ITEM;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 289
    .local v3, mcc:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x400

    if-lt v5, v6, :cond_1

    .line 290
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .end local v3           #mcc:Ljava/lang/Integer;
    .end local v4           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :cond_1
    :goto_1
    return v7

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 294
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 254
    return-void
.end method

.method public read()V
    .locals 4

    .prologue
    .line 614
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "Current_Country"

    const-string v2, "United States of America:310"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    .line 618
    const-string v1, "Last_Position"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/nbpcd/NBPCDSetting;->mCountryPos:I

    .line 619
    sget-boolean v1, Lcom/android/phone/nbpcd/NBPCDSetting;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NBPCDSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Read reference country "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/nbpcd/NBPCDSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->queryDefCountry()V

    .line 621
    return-void
.end method

.method public save()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/phone/nbpcd/NBPCDSetting;->changeDefaultCountry()V

    .line 625
    return-void
.end method
