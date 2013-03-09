.class public Lcom/android/phone/nbpcd/AssistedDialingSetting;
.super Landroid/app/Activity;
.source "AssistedDialingSetting.java"


# static fields
.field public static final CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_INIT_LIST:I = 0x2

.field private static final EVENT_INIT_UI:I = 0x3

.field private static final EVENT_RESET_DATABASE:I = 0x0

.field private static final EVENT_RESET_DATABASE_DONE:I = 0x1

.field private static final EVENT_SET_EDIT_MODE:I = 0x5

.field private static final EVENT_UPDATE_AREA_CODE_BY_MDN:I = 0x4

.field private static final MDN:Ljava/lang/String; = "MDN"

.field static final OPTION_MENU_ITEM_EDIT:I = 0x1

.field static final OPTION_MENU_ITEM_SET_DEFAULT:I = 0x3

.field static final OPTION_MENU_ITEM_SET_DONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AssistedDialingSetting"

.field private static bEditMode:Z


# instance fields
.field private final DIALOG_DELETE_COUNTRY:I

.field private final DIALOG_EMPTY_IDD:I

.field private final DIALOG_IDD_EXISTED:I

.field private final DIALOG_INVALID_IDD:I

.field private final LAST_POS:Ljava/lang/String;

.field private final REF_COUNTRY:Ljava/lang/String;

.field private final ResetAreaCode:I

.field editor:Landroid/content/SharedPreferences$Editor;

.field mAreaEdit:Landroid/widget/EditText;

.field mCR:Landroid/content/ContentResolver;

.field private mCountryPos:I

.field private mCurrentPK:Ljava/lang/String;

.field mEditModeLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field mIDDEdit:Landroid/widget/EditText;

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

.field mMccEdit:Landroid/widget/EditText;

.field mNddEdit:Landroid/widget/EditText;

.field mNumberLenghtEdit:Landroid/widget/EditText;

.field private mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

.field mViewModeLayout:Landroid/widget/LinearLayout;

.field mcountryCodeEdit:Landroid/widget/EditText;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    .line 69
    const-string v0, "content://htc.cdma.mcc/AssistedDialing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    .line 74
    sput-boolean v1, Lcom/android/phone/nbpcd/AssistedDialingSetting;->bEditMode:Z

    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    .line 420
    const-string v0, "Reference_Country"

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->REF_COUNTRY:Ljava/lang/String;

    .line 421
    const-string v0, "Last_Position"

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->LAST_POS:Ljava/lang/String;

    .line 423
    iput v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->ResetAreaCode:I

    .line 598
    new-instance v0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DIALOG_IDD_EXISTED:I

    .line 754
    iput v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DIALOG_EMPTY_IDD:I

    .line 755
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DIALOG_INVALID_IDD:I

    .line 756
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DIALOG_DELETE_COUNTRY:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->checkFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->initSpinner()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/nbpcd/AssistedDialingSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/nbpcd/AssistedDialingSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->updateDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->resetDatabase()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->updateAreaCodeByMdn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->initList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getListArray()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->prepareUI()V

    return-void
.end method

.method private change2EditMode(Z)V
    .locals 4
    .parameter "EditMode"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    if-ne p1, v2, :cond_0

    .line 280
    sput-boolean v2, Lcom/android/phone/nbpcd/AssistedDialingSetting;->bEditMode:Z

    .line 281
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mEditModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mMccEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mcountryCodeEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 285
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mIDDEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 286
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNddEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mAreaEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 288
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNumberLenghtEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 300
    :goto_0
    return-void

    .line 290
    :cond_0
    sput-boolean v1, Lcom/android/phone/nbpcd/AssistedDialingSetting;->bEditMode:Z

    .line 291
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mEditModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mMccEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mcountryCodeEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mIDDEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 296
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNddEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mAreaEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNumberLenghtEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setEditable(Landroid/widget/EditText;Z)V

    goto :goto_0
.end method

.method private changeDefaultCountry()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 682
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 683
    .local v2, valueCr:Landroid/content/ContentValues;
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "TRUE"

    aput-object v9, v4, v8

    .line 684
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v6, "DefCountry=?"

    .line 685
    .local v6, whereClause:Ljava/lang/String;
    const-string v8, "DefCountry"

    const-string v9, "FALSE"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    invoke-virtual {v8, v9, v2, v6, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 688
    sget-boolean v8, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AssistedDialingSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change to Refer country "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 691
    .local v3, valueCrDef:Landroid/content/ContentValues;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    aput-object v9, v5, v8

    .line 692
    .local v5, whereArgsDef:[Ljava/lang/String;
    const-string v7, "PK=?"

    .line 693
    .local v7, whereClauseDef:Ljava/lang/String;
    const-string v8, "DefCountry"

    const-string v9, "TRUE"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    invoke-virtual {v8, v9, v3, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 697
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v8, :cond_2

    .line 698
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "Reference_Country"

    iget-object v10, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 699
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "Last_Position"

    iget v10, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 700
    sget-boolean v8, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "AssistedDialingSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Save reference country "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_1
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 712
    .end local v2           #valueCr:Landroid/content/ContentValues;
    .end local v3           #valueCrDef:Landroid/content/ContentValues;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v5           #whereArgsDef:[Ljava/lang/String;
    .end local v6           #whereClause:Ljava/lang/String;
    .end local v7           #whereClauseDef:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const v8, 0x104039d

    const/16 v9, 0x1388

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 705
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 706
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v1           #toast:Landroid/widget/Toast;
    :catch_1
    move-exception v0

    .line 707
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v8, "AssistedDialingSetting"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const v8, 0x7f0e0141

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 709
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v0

    .line 710
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "AssistedDialingSetting"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkFields()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 393
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mcountryCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, CountryCode:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mIDDEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, IDD:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNddEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, NDD:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mAreaEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, Area:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNumberLenghtEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, NumberLengh:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 401
    :cond_0
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->showWarningDialog(I)V

    move v6, v7

    .line 418
    .end local v0           #Area:Ljava/lang/String;
    .end local v1           #CountryCode:Ljava/lang/String;
    .end local v2           #IDD:Ljava/lang/String;
    .end local v3           #NDD:Ljava/lang/String;
    .end local v4           #NumberLengh:Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 405
    .restart local v0       #Area:Ljava/lang/String;
    .restart local v1       #CountryCode:Ljava/lang/String;
    .restart local v2       #IDD:Ljava/lang/String;
    .restart local v3       #NDD:Ljava/lang/String;
    .restart local v4       #NumberLengh:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_1

    .line 410
    :cond_3
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->showWarningDialog(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 411
    goto :goto_0

    .line 414
    .end local v0           #Area:Ljava/lang/String;
    .end local v1           #CountryCode:Ljava/lang/String;
    .end local v2           #IDD:Ljava/lang/String;
    .end local v3           #NDD:Ljava/lang/String;
    .end local v4           #NumberLengh:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 415
    .local v5, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v9}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->showWarningDialog(I)V

    move v6, v7

    .line 416
    goto :goto_0
.end method

.method private findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    .locals 2
    .parameter "pk"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 242
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
    .line 246
    const/4 v6, 0x0

    .line 247
    .local v6, pathes:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 248
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #pathes:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .restart local v6       #pathes:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 250
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/phone/nbpcd/NBPCDUtility;->getSortedSet(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, sortedkeys:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
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

    .line 253
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 255
    iput v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    .line 256
    sget-boolean v8, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AssistedDialingSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
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

.method private initList()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 223
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/nbpcd/NBPCDUtility;->project:[Ljava/lang/String;

    const-string v5, "ORDER BY Country ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 226
    .local v6, Cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 227
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    sget-boolean v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AssistedDialingSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get cursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mLookupTable:Ljava/util/HashMap;

    invoke-static {v6, v0}, Lcom/android/phone/nbpcd/NBPCDUtility;->getAllRecord(Landroid/database/Cursor;Ljava/util/HashMap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_1
    if-eqz v6, :cond_2

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    return-void

    .line 234
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private initSpinner()V
    .locals 4

    .prologue
    .line 714
    const v2, 0x7f0800a7

    invoke-virtual {p0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    .line 715
    .local v1, spinner:Lcom/htc/widget/HtcSpinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x20900ee

    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 718
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    const v2, 0x20900af

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 721
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 722
    iget v2, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 723
    new-instance v2, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 750
    return-void
.end method

.method private prepareUI()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 444
    const v8, 0x7f0800a8

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mcountryCodeEdit:Landroid/widget/EditText;

    .line 445
    const v8, 0x7f0800a9

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mIDDEdit:Landroid/widget/EditText;

    .line 446
    const v8, 0x7f0800aa

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNddEdit:Landroid/widget/EditText;

    .line 447
    const v8, 0x7f0800ab

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mAreaEdit:Landroid/widget/EditText;

    .line 448
    const v8, 0x7f0800ac

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNumberLenghtEdit:Landroid/widget/EditText;

    .line 449
    const v8, 0x7f0800ad

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mMccEdit:Landroid/widget/EditText;

    .line 450
    const v8, 0x7f0800a4

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mViewModeLayout:Landroid/widget/LinearLayout;

    .line 451
    const v8, 0x7f0800a5

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mEditModeLayout:Landroid/widget/LinearLayout;

    .line 507
    new-instance v4, Lcom/htc/widget/HtcFooter;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 508
    .local v4, fl:Lcom/htc/widget/HtcFooter;
    new-instance v2, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 509
    .local v2, butCheckNow:Lcom/htc/widget/HtcFooterButton;
    const v8, 0x7f0e013d

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 510
    new-instance v8, Lcom/android/phone/nbpcd/AssistedDialingSetting$1;

    invoke-direct {v8, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$1;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 517
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 518
    .local v6, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 520
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    new-instance v5, Lcom/htc/widget/HtcFooter;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 523
    .local v5, fl2:Lcom/htc/widget/HtcFooter;
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, btnSave:Lcom/htc/widget/HtcFooterButton;
    const v8, 0x7f0e00f9

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 525
    new-instance v8, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;

    invoke-direct {v8, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$2;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 538
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 539
    .local v1, btn_cancel:Lcom/htc/widget/HtcFooterButton;
    const v8, 0x7f0e00fa

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 540
    new-instance v8, Lcom/android/phone/nbpcd/AssistedDialingSetting$3;

    invoke-direct {v8, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$3;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 547
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mEditModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    const v8, 0x7f0800a6

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 551
    .local v3, enableAssistedDialing:Landroid/widget/CheckBox;
    if-eqz v3, :cond_0

    .line 552
    new-instance v8, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;

    invoke-direct {v8, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 579
    :cond_0
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v8, :cond_1

    .line 580
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    const-string v9, "EnableAssistedDialing"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 582
    .local v7, mbIsCheck:Z
    if-eqz v7, :cond_1

    .line 583
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 586
    .end local v7           #mbIsCheck:Z
    :cond_1
    return-void
.end method

.method private queryDefCountry()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "TRUE"

    aput-object v0, v4, v1

    .line 654
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v3, "DefCountry=?"

    .line 658
    .local v3, whereClause:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/nbpcd/NBPCDUtility;->project:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 662
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 663
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 664
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 665
    .local v10, pk:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 666
    .local v9, mcc:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 667
    .local v7, country:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, CounteryCode:Ljava/lang/String;
    sget-boolean v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AssistedDialingSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Refer country:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .end local v6           #CounteryCode:Ljava/lang/String;
    .end local v7           #country:Ljava/lang/String;
    .end local v9           #mcc:Ljava/lang/String;
    .end local v10           #pk:Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_1
    return-void

    .line 672
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private resetDatabase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 644
    :cond_0
    const-string v0, "United States of America:310"

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    .line 645
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->initList()V

    .line 646
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->updateAreaCodeByMdn()V

    .line 647
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getListArray()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mList:Ljava/util/List;

    .line 648
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 649
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->save()V

    .line 650
    return-void
.end method

.method private setEditable(Landroid/widget/EditText;Z)V
    .locals 0
    .parameter "editText"
    .parameter "enable"

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 274
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 275
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private setupHtcHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 93
    const-string v3, "AssistedDialingSetting"

    const-string v4, "setupHtcHeader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 100
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 104
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    .local v0, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 106
    return-void
.end method

.method private showWarningDialog(I)V
    .locals 4
    .parameter "dialogType"

    .prologue
    .line 761
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0106

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0140

    new-instance v3, Lcom/android/phone/nbpcd/AssistedDialingSetting$7;

    invoke-direct {v3, p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting$7;-><init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 769
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 780
    :goto_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 781
    return-void

    .line 771
    :pswitch_0
    const v1, 0x7f0e0107

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 774
    :pswitch_1
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 777
    :pswitch_2
    const v1, 0x7f0e010f

    invoke-virtual {p0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAreaCodeByMdn()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 363
    :try_start_0
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 365
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, phoneNumber:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-le v8, v9, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, AreaCode:Ljava/lang/String;
    :goto_0
    sget-boolean v8, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AssistedDialingSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "First 3 digitals of MDN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v5, valueCr:Landroid/content/ContentValues;
    const-string v8, "AreaCode"

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v7, "AreaCode=? OR AreaCode=?"

    .line 372
    .local v7, whereClause:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "000"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v6, v8

    .line 374
    .local v6, whereArgs:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    if-eqz v8, :cond_1

    .line 375
    iget-object v8, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v7, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    .end local v0           #AreaCode:Ljava/lang/String;
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    .end local v5           #valueCr:Landroid/content/ContentValues;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v7           #whereClause:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 366
    .restart local v2       #phoneNumber:Ljava/lang/String;
    .restart local v3       #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v0, "000"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 377
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const v8, 0x104039d

    const/16 v9, 0x1388

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 379
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 380
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v4           #toast:Landroid/widget/Toast;
    :catch_1
    move-exception v1

    .line 381
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v8, "AssistedDialingSetting"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const v8, 0x7f0e0141

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 383
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v1

    .line 384
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "AssistedDialingSetting"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static updateAreaCodeByMdn(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 9
    .parameter "cr"
    .parameter "context"

    .prologue
    .line 341
    :try_start_0
    const-string v6, "ril.cdmaphoneapp.mdn"

    const-string v7, "0000000000"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, phoneNumber:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, AreaCode:Ljava/lang/String;
    :goto_0
    sget-boolean v6, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "AssistedDialingSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First 3 digitals of MDN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v3, valueCr:Landroid/content/ContentValues;
    const-string v6, "AreaCode"

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v5, "AreaCode=? OR AreaCode=?"

    .line 348
    .local v5, whereClause:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "000"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "0"

    aput-object v7, v4, v6

    .line 350
    .local v4, whereArgs:[Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 351
    sget-object v6, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    invoke-virtual {p0, v6, v3, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    .end local v0           #AreaCode:Ljava/lang/String;
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #valueCr:Landroid/content/ContentValues;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v5           #whereClause:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 342
    .restart local v2       #phoneNumber:Ljava/lang/String;
    :cond_2
    const-string v0, "000"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 353
    .end local v2           #phoneNumber:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "AssistedDialingSetting"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 355
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 356
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v6, "AssistedDialingSetting"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v1

    .line 358
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "AssistedDialingSetting"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateDatabase()V
    .locals 13

    .prologue
    .line 306
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mMccEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, mcc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mcountryCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, CountryCode:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mIDDEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, IDD:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNddEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, NDD:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mAreaEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, Area:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNumberLenghtEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, NumberLengh:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v8, valueCr:Landroid/content/ContentValues;
    const-string v9, "PK"

    iget-object v10, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v9, "MCC"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v9, "CountryCode"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v9, "IDD"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v9, "NDD"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v9, "AreaCode"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v9, "numLength"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    sget-boolean v9, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "AssistedDialingSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDatabase mCurrentPK -->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    if-eqz v9, :cond_1

    .line 326
    iget-object v9, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/phone/nbpcd/AssistedDialingSetting;->CONTENT_URI_ASSISTED_DIALING:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 337
    .end local v0           #Area:Ljava/lang/String;
    .end local v1           #CountryCode:Ljava/lang/String;
    .end local v2           #IDD:Ljava/lang/String;
    .end local v3           #NDD:Ljava/lang/String;
    .end local v4           #NumberLengh:Ljava/lang/String;
    .end local v6           #mcc:Ljava/lang/String;
    .end local v8           #valueCr:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v5

    .line 329
    .local v5, e:Landroid/database/sqlite/SQLiteFullException;
    const v9, 0x104039d

    const/16 v10, 0x1388

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 330
    .local v7, toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 331
    .end local v5           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v7           #toast:Landroid/widget/Toast;
    :catch_1
    move-exception v5

    .line 332
    .local v5, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v9, "AssistedDialingSetting"

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const v9, 0x7f0e0141

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 334
    .end local v5           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v5

    .line 335
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    const-string v9, "AssistedDialingSetting"

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setupHtcHeader()V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCR:Landroid/content/ContentResolver;

    .line 117
    const-string v3, "VZWConversionSetting"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    .line 119
    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->read()V

    .line 122
    const v3, 0x7f03001b

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->setContentView(I)V

    .line 124
    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    const-string v4, "MDN"

    const-string v5, "0000000000"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, mdn:Ljava/lang/String;
    const-string v3, "ril.cdmaphoneapp.mdn"

    const-string v4, "0000000000"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 128
    .local v1, msg:Landroid/os/Message;
    sget-boolean v3, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "AssistedDialingSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previous mdn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 133
    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "MDN"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    const v0, 0x7f0e00f6

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 179
    const/4 v0, 0x2

    const v1, 0x7f0e00f7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 180
    const/4 v0, 0x3

    const v1, 0x7f0e00f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 182
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[AssistedDialingSetting]Edit assisted dialing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0, v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V

    goto :goto_0

    .line 195
    :pswitch_1
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[AssistedDialingSetting]Set assisted dialing done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v3}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v1, "ANALYTIC_Phone"

    const-string v2, "[AssistedDialingSetting]Set default"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    const v2, 0x7f0e0136

    invoke-virtual {p0, v2}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v0}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 210
    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 161
    sget-boolean v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->bEditMode:Z

    if-ne v0, v1, :cond_0

    .line 162
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    :goto_0
    return v1

    .line 168
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public read()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    const-string v1, "Reference_Country"

    const-string v2, "United States of America:310"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    const-string v1, "Last_Position"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I

    .line 434
    sget-boolean v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AssistedDialingSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Read reference country "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->queryDefCountry()V

    .line 437
    :cond_1
    return-void
.end method

.method public save()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->changeDefaultCountry()V

    .line 441
    return-void
.end method
