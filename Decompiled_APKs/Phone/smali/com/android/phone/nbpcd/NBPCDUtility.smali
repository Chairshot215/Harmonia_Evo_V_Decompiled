.class public Lcom/android/phone/nbpcd/NBPCDUtility;
.super Ljava/lang/Object;
.source "NBPCDUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nbpcd/NBPCDUtility$MenuButtonListener;
    }
.end annotation


# static fields
.field public static final AREA_CODE:Ljava/lang/String; = "AreaCode"

.field public static final CONTENT_URI_MCC_OTA:Landroid/net/Uri; = null

.field public static final COUNTRY_CODE:Ljava/lang/String; = "COUNTRYCODE"

.field public static final COUNTRY_NAME:Ljava/lang/String; = "CountryName"

.field static final CUSMOIZED_MCC_DEFAULT:I = 0x3ff

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_PK:Ljava/lang/String; = "United States of America:310"

.field public static final DefCountry:Ljava/lang/String; = "DefCountry"

.field public static final DefIDD:Ljava/lang/String; = "DefIDD"

.field public static final Editable:Ljava/lang/String; = "Editable"

.field public static final IDD_LIST:Ljava/lang/String; = "iddlist"

.field public static final IDD_NAME:Ljava/lang/String; = "IDD"

.field public static final MCC_NAME:Ljava/lang/String; = "MCC"

.field public static final NDD_NAME:Ljava/lang/String; = "NDD"

.field public static final NUM_LENGTH:Ljava/lang/String; = "numLength"

.field public static final PRIMARY_KEY_NAME:Ljava/lang/String; = "PK"

.field public static final RESULT_CANCEL:I = 0x2

.field public static final RESULT_DELETE:I = 0x3

.field public static final RESULT_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NBPCDUtility"

.field static mCurrentCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

.field static mReferenceCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

.field static project:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    .line 55
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "PK"

    aput-object v3, v0, v2

    const-string v2, "MCC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CountryName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "COUNTRYCODE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IDD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NDD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AreaCode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numLength"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DefIDD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DefCountry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Editable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/nbpcd/NBPCDUtility;->project:[Ljava/lang/String;

    .line 61
    const-string v0, "content://htc.cdma.mcc/MccOTA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/nbpcd/NBPCDUtility;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    .line 68
    sput-object v4, Lcom/android/phone/nbpcd/NBPCDUtility;->mCurrentCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 69
    sput-object v4, Lcom/android/phone/nbpcd/NBPCDUtility;->mReferenceCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static deleteDatabase(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 370
    if-nez p0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 373
    .local v0, Cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    sget-object v2, Lcom/android/phone/nbpcd/NBPCDUtility;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 379
    .end local v0           #Cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "NBPCDUtility"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 382
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const v2, 0x7f0e0141

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 383
    const-string v2, "NBPCDUtility"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v1

    .line 385
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "NBPCDUtility"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAllRecord(Landroid/database/Cursor;Ljava/util/HashMap;)I
    .locals 26
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/nbpcd/MCC_ITEM;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, lookupTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    const/16 v23, 0x3ff

    .line 186
    .local v23, maxMCC:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move/from16 v24, v23

    .line 252
    .end local v23           #maxMCC:I
    .local v24, maxMCC:I
    :goto_0
    return v24

    .line 189
    .end local v24           #maxMCC:I
    .restart local v23       #maxMCC:I
    :cond_1
    sget-boolean v10, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "NBPCDUtility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cursor col number :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 210
    :cond_3
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, pk:Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, mcc:Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, country:Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, CounteryCode:Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, IDD:Ljava/lang/String;
    const/4 v10, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, NDD:Ljava/lang/String;
    const/4 v10, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, AreaCode:Ljava/lang/String;
    const/4 v10, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 219
    .local v7, numLength:Ljava/lang/Integer;
    const/16 v10, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "TRUE"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v8, 0x1

    .line 220
    .local v8, defIdd:Z
    :goto_1
    const/16 v10, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "TRUE"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v21, 0x1

    .line 221
    .local v21, defCountry:Z
    :goto_2
    const/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "TRUE"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x1

    .line 225
    .local v9, editable:Z
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 226
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 227
    .local v1, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    if-eqz v1, :cond_a

    .line 228
    invoke-virtual/range {v1 .. v9}, Lcom/android/phone/nbpcd/MCC_ITEM;->addIDD_NDD_Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    .line 230
    sget-boolean v10, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v10, :cond_4

    const-string v10, "NBPCDUtility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add item+ mcc=>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_4
    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 242
    .local v25, mccValue:Ljava/lang/Integer;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v0, v23

    if-le v10, v0, :cond_5

    .line 243
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 244
    sget-boolean v10, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v10, :cond_5

    const-string v10, "NBPCDUtility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Max mccValue "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    .end local v2           #country:Ljava/lang/String;
    .end local v3           #CounteryCode:Ljava/lang/String;
    .end local v4           #IDD:Ljava/lang/String;
    .end local v5           #NDD:Ljava/lang/String;
    .end local v6           #AreaCode:Ljava/lang/String;
    .end local v7           #numLength:Ljava/lang/Integer;
    .end local v8           #defIdd:Z
    .end local v9           #editable:Z
    .end local v11           #pk:Ljava/lang/String;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v21           #defCountry:Z
    .end local v25           #mccValue:Ljava/lang/Integer;
    :cond_5
    :goto_5
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_3

    :cond_6
    move/from16 v24, v23

    .line 252
    .end local v23           #maxMCC:I
    .restart local v24       #maxMCC:I
    goto/16 :goto_0

    .line 219
    .end local v24           #maxMCC:I
    .restart local v2       #country:Ljava/lang/String;
    .restart local v3       #CounteryCode:Ljava/lang/String;
    .restart local v4       #IDD:Ljava/lang/String;
    .restart local v5       #NDD:Ljava/lang/String;
    .restart local v6       #AreaCode:Ljava/lang/String;
    .restart local v7       #numLength:Ljava/lang/Integer;
    .restart local v11       #pk:Ljava/lang/String;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v23       #maxMCC:I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 220
    .restart local v8       #defIdd:Z
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 221
    .restart local v21       #defCountry:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 232
    .restart local v1       #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    .restart local v9       #editable:Z
    :cond_a
    :try_start_1
    const-string v10, "NBPCDUtility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "not add item+ mcc=>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 247
    .end local v1           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    .end local v2           #country:Ljava/lang/String;
    .end local v3           #CounteryCode:Ljava/lang/String;
    .end local v4           #IDD:Ljava/lang/String;
    .end local v5           #NDD:Ljava/lang/String;
    .end local v6           #AreaCode:Ljava/lang/String;
    .end local v7           #numLength:Ljava/lang/Integer;
    .end local v8           #defIdd:Z
    .end local v9           #editable:Z
    .end local v11           #pk:Ljava/lang/String;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v21           #defCountry:Z
    :catch_0
    move-exception v22

    .line 248
    .local v22, ex:Ljava/lang/NumberFormatException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    .line 235
    .end local v22           #ex:Ljava/lang/NumberFormatException;
    .restart local v2       #country:Ljava/lang/String;
    .restart local v3       #CounteryCode:Ljava/lang/String;
    .restart local v4       #IDD:Ljava/lang/String;
    .restart local v5       #NDD:Ljava/lang/String;
    .restart local v6       #AreaCode:Ljava/lang/String;
    .restart local v7       #numLength:Ljava/lang/Integer;
    .restart local v8       #defIdd:Z
    .restart local v9       #editable:Z
    .restart local v11       #pk:Ljava/lang/String;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v21       #defCountry:Z
    :cond_b
    :try_start_2
    new-instance v1, Lcom/android/phone/nbpcd/MCC_ITEM;

    move-object v10, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v10 .. v20}, Lcom/android/phone/nbpcd/MCC_ITEM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    .line 238
    .restart local v1       #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public static getCurrentCountry(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    .locals 1
    .parameter "mCr"
    .parameter "pk"

    .prologue
    .line 121
    sget-object v0, Lcom/android/phone/nbpcd/NBPCDUtility;->mCurrentCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

    invoke-static {p0, p1, v0}, Lcom/android/phone/nbpcd/NBPCDUtility;->initList(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/android/phone/nbpcd/MCC_ITEM;)V

    .line 122
    sget-object v0, Lcom/android/phone/nbpcd/NBPCDUtility;->mCurrentCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

    return-object v0
.end method

.method public static getReferenceCountry(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    .locals 1
    .parameter "mCr"
    .parameter "pk"

    .prologue
    .line 126
    sget-object v0, Lcom/android/phone/nbpcd/NBPCDUtility;->mReferenceCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

    invoke-static {p0, p1, v0}, Lcom/android/phone/nbpcd/NBPCDUtility;->initList(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/android/phone/nbpcd/MCC_ITEM;)V

    .line 127
    sget-object v0, Lcom/android/phone/nbpcd/NBPCDUtility;->mReferenceCountry:Lcom/android/phone/nbpcd/MCC_ITEM;

    return-object v0
.end method

.method public static getSortedSet(Ljava/util/Set;)[Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    .line 151
    .local v5, size:I
    new-array v4, v5, [Ljava/lang/String;

    .line 152
    .local v4, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 154
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, number:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v3, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 157
    .end local v3           #number:Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 158
    return-object v4
.end method

.method private static initList(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/android/phone/nbpcd/MCC_ITEM;)V
    .locals 19
    .parameter "mCR"
    .parameter "pk"
    .parameter "mccItem"

    .prologue
    .line 74
    const-string v4, "PK=?"

    .line 75
    .local v4, whereClause:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 77
    .local v5, whereArgs:[Ljava/lang/String;
    sget-object v2, Lcom/android/phone/nbpcd/NBPCDUtility;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/nbpcd/NBPCDUtility;->project:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 80
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_1

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 93
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, mcc:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, country:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, CounteryCode:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, IDD:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, NDD:Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, AreaCode:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 101
    .local v14, numLength:Ljava/lang/Integer;
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    .line 102
    .local v15, defIdd:Z
    :goto_0
    const/16 v1, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v18, 0x1

    .line 103
    .local v18, defCountry:Z
    :goto_1
    const/16 v1, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v16, 0x1

    .line 105
    .local v16, editable:Z
    :goto_2
    new-instance v6, Lcom/android/phone/nbpcd/MCC_ITEM;

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v16}, Lcom/android/phone/nbpcd/MCC_ITEM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local p2
    .local v6, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :try_start_1
    sget-boolean v1, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NBPCDUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initList pk :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/phone/nbpcd/MCC_ITEM;->getPrimarykey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/phone/nbpcd/MCC_ITEM;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "country name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCounterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  IDD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCurrentIDD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NDD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNDD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object/from16 p2, v6

    .line 112
    .end local v6           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    .end local v8           #mcc:Ljava/lang/String;
    .end local v9           #country:Ljava/lang/String;
    .end local v10           #CounteryCode:Ljava/lang/String;
    .end local v11           #IDD:Ljava/lang/String;
    .end local v12           #NDD:Ljava/lang/String;
    .end local v13           #AreaCode:Ljava/lang/String;
    .end local v14           #numLength:Ljava/lang/Integer;
    .end local v15           #defIdd:Z
    .end local v16           #editable:Z
    .end local v18           #defCountry:Z
    .restart local p2
    :cond_1
    if-eqz v17, :cond_2

    .line 113
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_2
    return-void

    .line 101
    .restart local v8       #mcc:Ljava/lang/String;
    .restart local v9       #country:Ljava/lang/String;
    .restart local v10       #CounteryCode:Ljava/lang/String;
    .restart local v11       #IDD:Ljava/lang/String;
    .restart local v12       #NDD:Ljava/lang/String;
    .restart local v13       #AreaCode:Ljava/lang/String;
    .restart local v14       #numLength:Ljava/lang/Integer;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 102
    .restart local v15       #defIdd:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_1

    .line 103
    .restart local v18       #defCountry:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    .line 112
    .end local v8           #mcc:Ljava/lang/String;
    .end local v9           #country:Ljava/lang/String;
    .end local v10           #CounteryCode:Ljava/lang/String;
    .end local v11           #IDD:Ljava/lang/String;
    .end local v12           #NDD:Ljava/lang/String;
    .end local v13           #AreaCode:Ljava/lang/String;
    .end local v14           #numLength:Ljava/lang/Integer;
    .end local v15           #defIdd:Z
    .end local v18           #defCountry:Z
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v17, :cond_6

    .line 113
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 112
    .end local p2
    .restart local v6       #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    .restart local v8       #mcc:Ljava/lang/String;
    .restart local v9       #country:Ljava/lang/String;
    .restart local v10       #CounteryCode:Ljava/lang/String;
    .restart local v11       #IDD:Ljava/lang/String;
    .restart local v12       #NDD:Ljava/lang/String;
    .restart local v13       #AreaCode:Ljava/lang/String;
    .restart local v14       #numLength:Ljava/lang/Integer;
    .restart local v15       #defIdd:Z
    .restart local v16       #editable:Z
    .restart local v18       #defCountry:Z
    :catchall_1
    move-exception v1

    move-object/from16 p2, v6

    .end local v6           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    .restart local p2
    goto :goto_3
.end method

.method public static insertDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .locals 10
    .parameter "context"
    .parameter "pk"
    .parameter "mcc"
    .parameter "country"
    .parameter "CountryCode"
    .parameter "IDD"
    .parameter "NDD"
    .parameter "Area"
    .parameter "NumberLengh"
    .parameter "defIdd"
    .parameter "defCountry"

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, insertDone:Z
    if-nez p0, :cond_0

    move v4, v3

    .line 363
    .end local v3           #insertDone:Z
    .local v4, insertDone:I
    :goto_0
    return v4

    .line 322
    .end local v4           #insertDone:I
    .restart local v3       #insertDone:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 323
    .local v1, Cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    move v4, v3

    .line 324
    .restart local v4       #insertDone:I
    goto :goto_0

    .line 327
    .end local v4           #insertDone:I
    :cond_1
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v6, valueCr:Landroid/content/ContentValues;
    const-string v7, "PK"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v7, "MCC"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v7, "CountryName"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v7, "COUNTRYCODE"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v7, "IDD"

    invoke-virtual {v6, v7, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v7, "NDD"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v7, "AreaCode"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v7, "numLength"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const/4 v7, 0x1

    move/from16 v0, p9

    if-ne v0, v7, :cond_4

    .line 338
    const-string v7, "DefIDD"

    const-string v8, "TRUE"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_1
    const/4 v7, 0x1

    move/from16 v0, p10

    if-ne v0, v7, :cond_5

    .line 343
    const-string v7, "DefCountry"

    const-string v8, "TRUE"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_2
    const-string v7, "Editable"

    const-string v8, "TRUE"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-boolean v7, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "NBPCDUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert pk key -->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    if-eqz v1, :cond_3

    .line 351
    sget-object v7, Lcom/android/phone/nbpcd/NBPCDUtility;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 353
    :cond_3
    const/4 v3, 0x1

    move v4, v3

    .line 363
    .restart local v4       #insertDone:I
    goto/16 :goto_0

    .line 340
    .end local v4           #insertDone:I
    :cond_4
    const-string v7, "DefIDD"

    const-string v8, "FALSE"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 354
    .end local v6           #valueCr:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 355
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    const v7, 0x104039d

    const/16 v8, 0x1388

    :try_start_1
    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 356
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v3

    .line 363
    .restart local v4       #insertDone:I
    goto/16 :goto_0

    .line 345
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v4           #insertDone:I
    .end local v5           #toast:Landroid/widget/Toast;
    .restart local v6       #valueCr:Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    const-string v7, "DefCountry"

    const-string v8, "FALSE"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 357
    .end local v6           #valueCr:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 358
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_3
    const-string v7, "NBPCDUtility"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const v7, 0x7f0e0141

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move v4, v3

    .line 363
    .restart local v4       #insertDone:I
    goto/16 :goto_0

    .line 360
    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v4           #insertDone:I
    :catch_2
    move-exception v2

    .line 361
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v7, "NBPCDUtility"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v3

    .line 363
    .restart local v4       #insertDone:I
    goto/16 :goto_0

    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #insertDone:I
    :catchall_0
    move-exception v7

    move v4, v3

    .restart local v4       #insertDone:I
    goto/16 :goto_0
.end method

.method public static updateDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "pk"
    .parameter "mcc"
    .parameter "country"
    .parameter "CountryCode"
    .parameter "IDD"
    .parameter "NDD"
    .parameter "Area"
    .parameter "NumberLengh"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 263
    .local v2, Cr:Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 268
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v5, valueCr:Landroid/content/ContentValues;
    const-string v6, "PK"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eqz p2, :cond_2

    .line 271
    const-string v6, "MCC"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    if-eqz p3, :cond_3

    .line 274
    const-string v6, "CountryName"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_3
    if-eqz p4, :cond_4

    .line 277
    const-string v6, "COUNTRYCODE"

    invoke-virtual {v5, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_4
    if-eqz p5, :cond_5

    .line 280
    const-string v6, "IDD"

    invoke-virtual {v5, v6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_5
    if-eqz p6, :cond_6

    .line 283
    const-string v6, "NDD"

    invoke-virtual {v5, v6, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_6
    if-eqz p7, :cond_7

    .line 286
    const-string v6, "AreaCode"

    move-object/from16 v0, p7

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_7
    if-ltz p8, :cond_8

    .line 289
    const-string v6, "numLength"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    :cond_8
    sget-boolean v6, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v6, :cond_9

    const-string v6, "NBPCDUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert pk key -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_9
    sget-boolean v6, Lcom/android/phone/nbpcd/NBPCDUtility;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "NBPCDUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDatabase mCurrentPK -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_a
    if-eqz v2, :cond_0

    .line 296
    if-nez p9, :cond_b

    .line 297
    sget-object v6, Lcom/android/phone/nbpcd/NBPCDUtility;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 303
    .end local v5           #valueCr:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 304
    .local v3, e:Landroid/database/sqlite/SQLiteFullException;
    const v6, 0x104039d

    const/16 v7, 0x1388

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 305
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 299
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v4           #toast:Landroid/widget/Toast;
    .restart local v5       #valueCr:Landroid/content/ContentValues;
    :cond_b
    :try_start_1
    sget-object v6, Lcom/android/phone/nbpcd/NBPCDUtility;->CONTENT_URI_MCC_OTA:Landroid/net/Uri;

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v2, v6, v5, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 306
    .end local v5           #valueCr:Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 307
    .local v3, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v6, "NBPCDUtility"

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const v6, 0x7f0e0141

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    .end local v3           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v3

    .line 310
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "NBPCDUtility"

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public retrieveAllHashMap(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/nbpcd/MCC_ITEM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, lookupTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/nbpcd/MCC_ITEM;>;"
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 168
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 172
    .local v5, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v5}, Lcom/android/phone/nbpcd/MCC_ITEM;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, IDDArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/nbpcd/IDD_ITEM;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/nbpcd/IDD_ITEM;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/nbpcd/IDD_ITEM;

    invoke-virtual {v6}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    goto :goto_0

    .line 181
    .end local v0           #IDDArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/nbpcd/IDD_ITEM;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/nbpcd/IDD_ITEM;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    :cond_1
    return-void
.end method
