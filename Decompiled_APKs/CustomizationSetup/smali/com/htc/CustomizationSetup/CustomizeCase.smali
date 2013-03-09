.class public Lcom/htc/CustomizationSetup/CustomizeCase;
.super Ljava/lang/Object;
.source "CustomizeCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;
    }
.end annotation


# static fields
.field private static final LOCALE_ERROR_MESSAGE:Ljava/lang/String; = "Show Menu"

.field private static final LOG_TAG:Ljava/lang/String; = "Customization_Setting"

.field private static final TAG_DATE:Ljava/lang/String; = "Cust_DateF"

.field private static final TAG_TIME:Ljava/lang/String; = "Cust_TimeF"

.field private static final TYPE_DATE:I = 0x1

.field private static final TYPE_TIME:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

.field private mIndex:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    .line 64
    iput-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    invoke-direct {v0, p0, p1}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;-><init>(Lcom/htc/CustomizationSetup/CustomizeCase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    .line 69
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 488
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 489
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 494
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private constructLocaleList()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    #calls: Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getLocaleDataSet()Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->access$000(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, ""

    const-string v5, "total_list"

    #calls: Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->access$100(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, total:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    const-string v2, "Customization_Setting"

    const-string v3, "CID format error, not support"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return v1

    .line 84
    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 87
    const-string v2, "Customization_Setting"

    const-string v3, "CID format error, not support"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private custDebug(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "msg"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 232
    const-string v0, "Cust_UnknowF"

    .line 234
    .local v0, debugTag:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 235
    const-string v0, "Cust_TimeF"

    .line 240
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string p2, "unknow"

    .line 244
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    const-string p3, "null"

    .line 247
    :cond_2
    const-string v1, "%s > %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 236
    :cond_3
    if-ne p1, v4, :cond_0

    .line 237
    const-string v0, "Cust_DateF"

    goto :goto_0
.end method

.method private getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "moduleName"
    .parameter "itemName"

    .prologue
    const/4 v2, 0x0

    .line 453
    const-string v3, "Customization_Setting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", itemName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 456
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 457
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 458
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 459
    const-string v2, "Customization_Setting"

    const-string v3, "Failed to get cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v10, ""

    .line 483
    :cond_0
    :goto_0
    return-object v10

    .line 462
    :cond_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 463
    .local v11, valueIndx:I
    const/4 v2, -0x1

    if-ne v2, v11, :cond_2

    .line 464
    const-string v2, "Customization_Setting"

    const-string v3, "no customized data support"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 466
    const-string v10, ""

    goto :goto_0

    .line 468
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const/4 v8, 0x0

    .line 472
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 478
    invoke-direct {p0, v8}, Lcom/htc/CustomizationSetup/CustomizeCase;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 479
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 480
    const-string v10, ""

    .line 481
    .local v10, out:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 482
    invoke-virtual {v6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 473
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #out:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 474
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "Customization_Setting"

    const-string v3, "CursorIndexOutOfBoundsException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 476
    const-string v10, ""

    goto :goto_0
.end method

.method private getSystemIMEString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "includeOnlyKeyword"

    .prologue
    .line 421
    iget-object v8, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 422
    const-string v8, "Customization_Setting"

    const-string v9, "No AP context to get service IM manager"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v8, ""

    .line 448
    :goto_0
    return-object v8

    .line 425
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 428
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_5

    .line 429
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 430
    .local v5, inputMethodProperties:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 431
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 432
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 433
    .local v6, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, id:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/htc/CustomizationSetup/CustomizeCase;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    .line 435
    .local v7, systemIme:Z
    if-eqz p1, :cond_2

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 436
    const/4 v8, -0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 431
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_2
    if-eqz v7, :cond_1

    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 445
    .end local v3           #id:Ljava/lang/String;
    .end local v6           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v7           #systemIme:Z
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 447
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #inputMethodProperties:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_5
    const-string v8, "Customization_Setting"

    const-string v9, "Failed to get IM manager"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v8, ""

    goto :goto_0
.end method

.method private isLocaleInList(Ljava/lang/String;)Z
    .locals 7
    .parameter "szPreferredLocale"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/CustomizeCase;->constructLocaleList()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    #calls: Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getLocaleDataSet()Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->access$000(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    aget-object v5, v5, v1

    #calls: Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->access$100(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 102
    const-string v2, "Customization_Setting"

    const-string v3, " isLocaleInList()  no CID support "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    const-string v2, "Customization_Setting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLocaleInList()  locale length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 109
    const-string v2, "yes"

    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mCustomUtil:Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;

    #calls: Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getLocaleDataSet()Landroid/os/Bundle;
    invoke-static {v4}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->access$000(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    aget-object v6, v6, v0

    #calls: Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->access$100(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mIndex:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isMorethanOnehTcIMEExist()Z
    .locals 4

    .prologue
    .line 511
    const-string v3, "com.htc.android.cime"

    invoke-direct {p0, v3}, Lcom/htc/CustomizationSetup/CustomizeCase;->isTargetIMEExist(Ljava/lang/String;)Z

    move-result v0

    .line 512
    .local v0, cIMEExist:Z
    const-string v3, "com.htc.android.htcime"

    invoke-direct {p0, v3}, Lcom/htc/CustomizationSetup/CustomizeCase;->isTargetIMEExist(Ljava/lang/String;)Z

    move-result v1

    .line 513
    .local v1, iMEExist:Z
    const/4 v2, 0x0

    .line 515
    .local v2, jIMEExist:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .parameter "property"

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isTargetIMEExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "targetPackage"

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, isExist:Z
    :try_start_0
    iget-object v1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    .line 504
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public doAutoTimeInit()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    const-string v1, "system_defaultAutoTime"

    const-string v2, "default"

    invoke-direct {p0, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, defaultData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "TimeF_AutoSync_AU"

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return v4

    .line 284
    :cond_0
    const-string v1, "TimeF_AutoSync_AU"

    invoke-direct {p0, v3, v1, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public doAutoTimeZoneInit()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 293
    const-string v5, "system_defaultAutoTimeZone"

    const-string v6, "default"

    invoke-direct {p0, v5, v6}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, defaultData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    const-string v5, "TimeF_AutoTimeZoneSync_AU"

    invoke-direct {p0, v7, v5, v9}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return v8

    .line 298
    :cond_1
    const-string v5, "TimeF_AutoSTimeZoneync_AU"

    invoke-direct {p0, v7, v5, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v3, 0x0

    .line 304
    .local v3, ret:Z
    :try_start_0
    const-class v5, Landroid/provider/Settings$System;

    const-string v6, "AUTO_TIME_ZONE"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 307
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 308
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 310
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v5, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 311
    const/4 v3, 0x1

    .line 324
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_2
    :goto_1
    if-nez v3, :cond_0

    .line 325
    const-string v5, "Customization_Setting"

    const-string v6, "Settings.System.AUTO_TIME_ZONE not defined"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .restart local v2       #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v5, "Customization_Setting"

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 318
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v1

    .line 319
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "Customization_Setting"

    const-string v6, "SecurityException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 315
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v2       #field:Ljava/lang/reflect/Field;
    :catch_2
    move-exception v1

    .line 316
    .local v1, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v5, "Customization_Setting"

    const-string v6, "IllegalAccessException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 320
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catch_3
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "Customization_Setting"

    const-string v6, "NoSuchFieldException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public doDateTimeFormatInit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 251
    const-string v1, "system_defaultTimeFormatSetting"

    const-string v2, "default"

    invoke-direct {p0, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, defaultData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "DateF_DF"

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return v3

    .line 256
    :cond_0
    const-string v1, "DateF_DF"

    invoke-direct {p0, v3, v1, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public doDateTimeFormatShortInit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    const-string v1, "system_defaultTimeFormatSettingShort"

    const-string v2, "default"

    invoke-direct {p0, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, defaultData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "DateF_SDF"

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_0
    return v3

    .line 270
    :cond_0
    const-string v1, "DateF_SDF"

    invoke-direct {p0, v3, v1, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format_short"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public doIMECustomized()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 187
    const-string v3, "system_IME"

    const-string v4, "defeault"

    invoke-direct {p0, v3, v4}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, defaultIME:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v5

    .line 190
    :cond_1
    const-string v1, ""

    .line 191
    .local v1, defaultIMEModuleName:Ljava/lang/String;
    const-string v3, "IME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    const-string v1, "com.htc.android.htcime/.HTCIMEService"

    .line 214
    :goto_1
    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_input_methods"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, imeList:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    .end local v2           #imeList:Ljava/lang/String;
    :cond_2
    const-string v3, "CIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    const-string v1, "com.htc.android.htcime/.HTCIMEService"

    goto :goto_1

    .line 197
    :cond_3
    const-string v3, "SWYPE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.swype.android.inputmethod"

    invoke-direct {p0, v3}, Lcom/htc/CustomizationSetup/CustomizeCase;->isTargetIMEExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const-string v1, "com.swype.android.inputmethod/.SwypeInputMethod"

    goto :goto_1
.end method

.method public doLocaleCustomized(Ljava/lang/String;)Z
    .locals 11
    .parameter "szPreferredLocale"

    .prologue
    .line 124
    const-string v8, "system_defaultLocale"

    const-string v9, "defeault"

    invoke-direct {p0, v8, v9}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, defaultLocale:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 128
    const-string v8, "Show Menu"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/CustomizeCase;->isLocaleInList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    move-object v3, p1

    .line 136
    :cond_0
    const-string v8, "Customization_Setting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***** doLocaleCustomized() -> system_defaultLocale = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 140
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 141
    .local v1, config:Landroid/content/res/Configuration;
    const-string v8, "Customization_Setting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " system language: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " system country: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    const/4 v8, 0x0

    :goto_1
    return v8

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, e:Landroid/os/RemoteException;
    const-string v8, "Customization_Setting"

    const-string v9, "Failed to get default locale"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 152
    .restart local v0       #am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 153
    .restart local v1       #config:Landroid/content/res/Configuration;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 154
    .local v7, len:I
    const/4 v5, 0x0

    .line 155
    .local v5, l:Ljava/util/Locale;
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 156
    new-instance v5, Ljava/util/Locale;

    .end local v5           #l:Ljava/util/Locale;
    invoke-direct {v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v5       #l:Ljava/util/Locale;
    :cond_2
    :goto_2
    if-nez v5, :cond_4

    .line 164
    const/4 v8, 0x0

    goto :goto_1

    .line 157
    :cond_3
    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    .line 158
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, language:Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, country:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    .end local v5           #l:Ljava/util/Locale;
    invoke-direct {v5, v6, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #l:Ljava/util/Locale;
    goto :goto_2

    .line 166
    .end local v2           #country:Ljava/lang/String;
    .end local v6           #language:Ljava/lang/String;
    :cond_4
    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 167
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 168
    const-string v8, "Customization_Setting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " doLocaleCustomized()  language = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " country = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 173
    iget-object v8, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "LocaleChange"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    const/4 v8, 0x1

    goto :goto_1

    .line 177
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v5           #l:Ljava/util/Locale;
    .end local v7           #len:I
    :catch_1
    move-exception v4

    .line 178
    .restart local v4       #e:Landroid/os/RemoteException;
    const-string v8, "Customization_Setting"

    const-string v9, "Failed to set default locale"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public doSDNotificationInit()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 377
    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sd_card_notifications"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, SETTING_SD_CARD_NOTIFICATIONS:I
    const/4 v2, 0x0

    .line 381
    .local v2, mMountService:Landroid/os/storage/IMountService;
    const/4 v1, 0x0

    .line 383
    .local v1, mAudioManager:Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "silent_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 387
    .local v3, silent_mode:I
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 390
    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mAudioManager:Landroid/media/AudioManager;
    check-cast v1, Landroid/media/AudioManager;

    .line 395
    .restart local v1       #mAudioManager:Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 398
    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "silent_mode"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 404
    const/4 v1, 0x0

    .line 411
    return v7

    .line 400
    :cond_1
    iget-object v4, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "silent_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public doScreenTimeOutInit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 363
    const-string v1, "system_defaultTimeOutSetting"

    const-string v2, "default"

    invoke-direct {p0, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, defaultData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :goto_0
    return v3

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public doTime1224Init()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    const-string v1, "system_defaultTime1224"

    const-string v2, "default"

    invoke-direct {p0, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, defaultData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "TimeF_AutoSync_Use24hr"

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return v4

    .line 338
    :cond_0
    const-string v1, "TimeF_AutoSync_Use24hr"

    invoke-direct {p0, v3, v1, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public doTimeZoneInit()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    const-string v2, "system_defaultTimeZone"

    const-string v3, "default"

    invoke-direct {p0, v2, v3}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, defaultData:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    const-string v2, "TimeF_AutoSync_DefaultTZ"

    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    return v5

    .line 352
    :cond_1
    const-string v2, "TimeF_AutoSync_DefaultTZ"

    invoke-direct {p0, v4, v2, v1}, Lcom/htc/CustomizationSetup/CustomizeCase;->custDebug(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 355
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleIMCustomized(Ljava/util/Locale;)Z
    .locals 8
    .parameter "targetLocale"

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/CustomizeCase;->isMorethanOnehTcIMEExist()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 521
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, previousIME:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, imeList:Ljava/lang/String;
    move-object v1, p1

    .line 526
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, localeLanguage:Ljava/lang/String;
    const-string v5, "com.htc.android.cime/.HTCIMEService"

    if-eq v4, v5, :cond_3

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 530
    :cond_0
    const-string v5, "com.htc.android.cime/.HTCIMEService"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 532
    const-string v3, "com.htc.android.cime/.HTCIMEService"

    .line 533
    .local v3, newList:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 536
    .end local v3           #newList:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    const-string v7, "com.htc.android.cime/.HTCIMEService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 594
    .end local v0           #imeList:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #localeLanguage:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 539
    .restart local v0       #imeList:Ljava/lang/String;
    .restart local v1       #locale:Ljava/util/Locale;
    .restart local v2       #localeLanguage:Ljava/lang/String;
    :cond_3
    const-string v5, "com.htc.android.htcime/.HTCIMEService"

    if-eq v4, v5, :cond_6

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 547
    :cond_4
    const-string v5, "com.htc.android.htcime/.HTCIMEService"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 549
    const-string v3, "com.htc.android.htcime/.HTCIMEService"

    .line 550
    .restart local v3       #newList:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    .end local v3           #newList:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    const-string v7, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 563
    :cond_6
    const-string v5, "com.htc.android.htcime/.HTCIMEService"

    if-eq v4, v5, :cond_2

    .line 564
    const-string v5, "com.htc.android.htcime/.HTCIMEService"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 566
    const-string v3, "com.htc.android.htcime/.HTCIMEService"

    .line 567
    .restart local v3       #newList:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    .end local v3           #newList:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    const-string v7, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 576
    .end local v0           #imeList:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #localeLanguage:Ljava/lang/String;
    .end local v4           #previousIME:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    .restart local v4       #previousIME:Ljava/lang/String;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9b

    if-eq v5, v6, :cond_9

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x20

    if-ne v5, v6, :cond_a

    :cond_9
    const-string v5, "com.swype.android.inputmethod/.SwypeInputMethod"

    if-eq v4, v5, :cond_a

    const-string v5, "com.swype.android.inputmethod"

    invoke-direct {p0, v5}, Lcom/htc/CustomizationSetup/CustomizeCase;->isTargetIMEExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 582
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    const-string v7, "com.swype.android.inputmethod/.SwypeInputMethod"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 585
    :cond_a
    const-string v5, "com.htc.android.htcime/.HTCIMEService"

    if-eq v4, v5, :cond_b

    const-string v5, "com.htc.android.htcime"

    invoke-direct {p0, v5}, Lcom/htc/CustomizationSetup/CustomizeCase;->isTargetIMEExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 586
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    const-string v7, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 588
    :cond_b
    const-string v5, "com.htc.android.cime/.HTCIMEService"

    if-eq v4, v5, :cond_2

    const-string v5, "com.htc.android.cime"

    invoke-direct {p0, v5}, Lcom/htc/CustomizationSetup/CustomizeCase;->isTargetIMEExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    iget-object v5, p0, Lcom/htc/CustomizationSetup/CustomizeCase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    const-string v7, "com.htc.android.cime/.HTCIMEService"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public isAutoDetectLocale()Z
    .locals 3

    .prologue
    .line 72
    const-string v1, "system_defaultLocale"

    const-string v2, "auto_detect"

    invoke-direct {p0, v1, v2}, Lcom/htc/CustomizationSetup/CustomizeCase;->getCustomizedSetUpData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, autoDetect:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
