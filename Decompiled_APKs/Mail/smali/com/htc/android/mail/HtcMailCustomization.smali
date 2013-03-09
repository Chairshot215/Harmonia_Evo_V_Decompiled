.class public Lcom/htc/android/mail/HtcMailCustomization;
.super Ljava/lang/Object;
.source "HtcMailCustomization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/HtcMailCustomization$ProviderSettingKey;,
        Lcom/htc/android/mail/HtcMailCustomization$ProviderKey;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcMailCustomization"


# instance fields
.field private MAIL_PROVIDER_CUSTOMIZE_URI:Ljava/lang/String;

.field private SELECTION_UPDATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "\"key\" == \"user_update\""

    iput-object v0, p0, Lcom/htc/android/mail/HtcMailCustomization;->SELECTION_UPDATE:Ljava/lang/String;

    .line 37
    const-string v0, "content://customization_settings/SettingTable/application_Mail"

    iput-object v0, p0, Lcom/htc/android/mail/HtcMailCustomization;->MAIL_PROVIDER_CUSTOMIZE_URI:Ljava/lang/String;

    .line 296
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1523
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1524
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1525
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1526
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1527
    const/4 v0, 0x0

    .line 1529
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 1528
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private convertInprotocol(Ljava/lang/String;)I
    .locals 3
    .parameter "inprotocol"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1533
    if-eqz p1, :cond_0

    const-string v2, ""

    if-ne p1, v2, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return v0

    .line 1535
    :cond_1
    const-string v2, "POP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1537
    const-string v2, "APOP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1538
    goto :goto_0

    .line 1539
    :cond_2
    const-string v2, "IMAP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1540
    const/4 v0, 0x2

    goto :goto_0

    .line 1541
    :cond_3
    const-string v2, "EAS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1542
    const/16 v0, 0xa

    goto :goto_0

    .line 1543
    :cond_4
    const-string v2, "HUX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1544
    const/4 v0, 0x6

    goto :goto_0

    .line 1545
    :cond_5
    const-string v2, "OTHER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1546
    goto :goto_0
.end method

.method private covertDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "description"

    .prologue
    .line 1559
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1560
    :cond_0
    const-string v1, ""

    .line 1569
    :goto_0
    return-object v1

    .line 1562
    :cond_1
    const-string v1, ""

    .line 1564
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "com.htc.android.mail"

    invoke-virtual {v3, p2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, e:Ljava/lang/Exception;
    move-object v1, p2

    goto :goto_0
.end method

.method private covertResId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 1552
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    :cond_0
    const/4 v0, 0x0

    .line 1555
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "com.htc.android.mail"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getProviderCustomizationData(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/content/ContentValues;
    .locals 9
    .parameter "context"
    .parameter "plentyBundle"
    .parameter "i"

    .prologue
    .line 94
    const-string v6, "provider"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, provider:Ljava/lang/String;
    const-string v6, "domain"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, domain:Ljava/lang/String;
    const-string v6, "inprotocol"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, inprotocol:Ljava/lang/String;
    const-string v6, "description"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, description:Ljava/lang/String;
    const-string v6, "resid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, resid:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcMailCustomization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_MailProvider : Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ServerName>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ServerDomain>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ServerProtocol>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AccountDesc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AccountRESID>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_provider"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v6, "_domain"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .end local v1           #domain:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "_inprotocol"

    invoke-direct {p0, v2}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v6, "_description"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/HtcMailCustomization;->covertDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v6, "_resid"

    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/HtcMailCustomization;->covertResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    return-object v5
.end method

.method private getProviderDataFromResource(Landroid/content/Context;Ljava/util/HashMap;)Landroid/content/ContentValues;
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v3, v:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, key:Ljava/lang/String;
    const-string v5, "_inprotocol"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v5, "_resid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "drawable"

    const-string v8, "com.htc.android.mail"

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 122
    :cond_2
    const-string v5, "_description"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    const-string v4, ""

    .line 124
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "com.htc.android.mail"

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 132
    :cond_3
    :goto_1
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #value:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v2           #key:Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method private getProviderSettingCustomizationData(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/content/ContentValues;
    .locals 16
    .parameter "context"
    .parameter "plentyBundle"
    .parameter "i"

    .prologue
    .line 312
    const-string v13, "provider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, provider:Ljava/lang/String;
    const-string v13, "providerGroup"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, providerGroup:Ljava/lang/String;
    const-string v13, "domain"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, domain:Ljava/lang/String;
    const-string v13, "inserver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, inserver:Ljava/lang/String;
    const-string v13, "inport"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, inport:Ljava/lang/String;
    const-string v13, "outserver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, outserver:Ljava/lang/String;
    const-string v13, "outport"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, outport:Ljava/lang/String;
    const-string v13, "inprotocol"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, inprotocol:Ljava/lang/String;
    const-string v13, "useSSLin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, usesslin:Ljava/lang/String;
    const-string v13, "useSSLout"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, usesslout:Ljava/lang/String;
    const-string v13, "smtpauth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, smtpauth:Ljava/lang/String;
    sget-boolean v13, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "HtcMailCustomization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cust_MailProviderST :provider setting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", provider>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", providerGroup>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", domain> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", inserver> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", inport> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", outserver>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", outport>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", inprotocol>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", usesslin>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", usesslout>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", smtpauth>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", end provider setting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    if-nez v9, :cond_1

    .line 337
    const-string v9, "1"

    .line 340
    :cond_1
    if-eqz v8, :cond_2

    .line 341
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 342
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v8, 0x0

    .line 345
    :cond_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "_provider"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v13, "_providerGroup"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v13, "_domain"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v13, "_inserver"

    invoke-virtual {v12, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v13, "_inport"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v13, "_outserver"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v13, "_outport"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v13, "_inprotocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v13, "_usesslin"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v13, "_usesslout"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v13, "_smtpauth"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    return-object v12
.end method

.method private getProviderSettingsDataFromResource(Landroid/content/Context;Ljava/util/HashMap;)Landroid/content/ContentValues;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 361
    .local p2, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v2, v:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, key:Ljava/lang/String;
    const-string v4, "_inprotocol"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 371
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private initWelecomeMessageMap(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 10
    .parameter "mailProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1452
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 1453
    const-string v8, "welcome_message"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1454
    .local v6, message:Landroid/os/Bundle;
    const-string v4, "plenty_set"

    .line 1455
    .local v4, key_plenty:Ljava/lang/String;
    const-string v3, ""

    .line 1457
    .local v3, key_now:Ljava/lang/String;
    const-string v2, "installTo"

    .line 1458
    .local v2, key_installTo:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1459
    .local v1, installTo:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 1460
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1461
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1462
    .local v7, plentyBundle:Landroid/os/Bundle;
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1459
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :cond_1
    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1467
    .end local v0           #i:I
    .end local v1           #installTo:Ljava/lang/String;
    .end local v2           #key_installTo:Ljava/lang/String;
    .end local v3           #key_now:Ljava/lang/String;
    .end local v4           #key_plenty:Ljava/lang/String;
    .end local v6           #message:Landroid/os/Bundle;
    .end local v7           #plentyBundle:Landroid/os/Bundle;
    :cond_2
    return-object v5
.end method

.method private installMessageToDB(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 33
    .parameter "context"
    .parameter "plentyBundle"

    .prologue
    .line 1353
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    const-string v26, "installTo"

    .line 1356
    .local v26, key_installTo:Ljava/lang/String;
    const-string v24, "fromDesc"

    .line 1357
    .local v24, key_fromDesc:Ljava/lang/String;
    const-string v25, "fromEmail"

    .line 1358
    .local v25, key_fromEmail:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_subject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1359
    .local v28, key_subject:Ljava/lang/String;
    const-string v23, "bodyMimetype"

    .line 1360
    .local v23, key_bodyMimetype:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_mailBody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1361
    .local v27, key_mailBody:Ljava/lang/String;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 1362
    .local v32, values:Landroid/content/ContentValues;
    const/16 v22, 0x0

    .line 1363
    .local v22, installTo:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1364
    .local v20, fromEmail:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1365
    .local v19, fromDesc:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1366
    .local v8, subject:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1367
    .local v15, bodyMimetype:Ljava/lang/String;
    const/16 v29, 0x0

    .line 1368
    .local v29, mailBody:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1370
    .local v21, group:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1371
    if-eqz v22, :cond_0

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1372
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1373
    if-eqz v20, :cond_0

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1374
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1375
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1377
    if-nez v8, :cond_2

    .line 1378
    const-string v2, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1380
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1381
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1382
    if-nez v29, :cond_3

    .line 1383
    const-string v2, "mailBody"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1386
    :cond_3
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_4

    .line 1387
    const-string v2, "HtcMailCustomization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cust_MailWelcomeMessage:, installTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromEmail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromDesc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bodyMimeype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mailBody:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mailBody:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1399
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/MailTextUtils;->htmlDecodeWithoutSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1401
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_del = -1 AND _emailaddress = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1402
    .local v5, where:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1403
    .local v16, c:Landroid/database/Cursor;
    const-wide/16 v13, -0x1

    .line 1404
    .local v13, accountId:J
    const-wide/16 v17, -0x1

    .line 1406
    .local v17, defaultmailboxId:J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_defaultfolderId"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1407
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1408
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1409
    const-string v2, "_defaultfolderId"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v17

    .line 1412
    :cond_6
    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1413
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v17, v2

    if-eqz v2, :cond_0

    .line 1417
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1419
    const-string v2, "_account"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1420
    const-string v2, "_from"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v2, "_fromEmail"

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v2, "_subject"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1424
    const-string v2, "_internaldate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1425
    const-string v2, "_readsize"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1426
    const-string v2, "_readtotalsize"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string v2, "_downloadtotalsize"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1428
    const-string v2, "_messagesize"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1429
    const-string v2, "_mailboxId"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1430
    const-string v2, "_local"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    const-string v2, "_sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    const/4 v2, 0x1

    new-array v12, v2, [J

    .line 1433
    .local v12, nPsuedoGroupId:[J
    const-string v7, ""

    const-string v9, ""

    const/4 v10, 0x0

    const-string v11, ""

    move-object/from16 v6, v20

    invoke-static/range {v6 .. v12}, Lcom/htc/android/mail/BaseStone;->getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v21

    .line 1434
    const-string v2, "_group"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 1436
    .local v31, uri:Landroid/net/Uri;
    if-eqz v31, :cond_0

    .line 1437
    sget-boolean v2, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "HtcMailCustomization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert welcome mail, messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_8
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 1441
    const-string v2, "_mimetype"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v2, "_text"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v2, "_charset"

    const-string v3, "utf-8"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v2, "_message"

    invoke-static/range {v31 .. v31}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1445
    const-string v2, "_account"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 1447
    .local v30, partUri:Landroid/net/Uri;
    sget-boolean v2, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcMailCustomization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert welcome mail, partId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1412
    .end local v12           #nPsuedoGroupId:[J
    .end local v30           #partUri:Landroid/net/Uri;
    .end local v31           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1413
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1412
    :cond_9
    throw v2
.end method

.method public static reload(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    new-instance v1, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v1}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 55
    .local v1, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, p0, v0}, Lcom/htc/android/mail/HtcMailCustomization;->insertMailProviderCustomizationData(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {v1, p0, v0}, Lcom/htc/android/mail/HtcMailCustomization;->insertMailProviderSettingCustomizationData(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {v1, p0, v0}, Lcom/htc/android/mail/HtcMailCustomization;->loadCustSignature(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {v1, p0, v0}, Lcom/htc/android/mail/HtcMailCustomization;->preInstallAccount(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public static reload(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "context"
    .parameter "db"

    .prologue
    .line 68
    new-instance v1, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v1}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 69
    .local v1, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, p0, p1, v0}, Lcom/htc/android/mail/HtcMailCustomization;->insertMailProviderCustomizationData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v1, p0, p1, v0}, Lcom/htc/android/mail/HtcMailCustomization;->insertMailProviderSettingCustomizationData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v1, p0, v0}, Lcom/htc/android/mail/HtcMailCustomization;->loadCustSignature(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getBrowserHomepageUrlCustomizationData(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 43
    const-string v3, "content://customization_settings/SettingTable/application_Browser"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/HtcMailCustomization;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 45
    const-string v3, "homepage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, homepageBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 47
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, value:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcMailCustomization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test reuslt: url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v1           #homepageBundle:Landroid/os/Bundle;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 1471
    const/4 v1, 0x0

    .line 1473
    .local v1, uri:Landroid/net/Uri;
    if-nez p1, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-object v2

    .line 1476
    :cond_1
    if-eqz p2, :cond_0

    .line 1479
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1483
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 1484
    const-string v0, "HtcMailCustomization"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1488
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1489
    const-string v0, "HtcMailCustomization"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1494
    :cond_3
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1495
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_4

    .line 1496
    const-string v0, "HtcMailCustomization"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1500
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1502
    const/4 v8, 0x0

    .line 1503
    .local v8, data:[B
    const/4 v6, 0x0

    .line 1506
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1507
    invoke-direct {p0, v8}, Lcom/htc/android/mail/HtcMailCustomization;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1512
    if-eqz v7, :cond_5

    .line 1513
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1514
    :goto_1
    const/4 v7, 0x0

    :cond_5
    move-object v2, v6

    .line 1518
    goto :goto_0

    .line 1508
    :catch_0
    move-exception v9

    .line 1509
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcMailCustomization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    const/4 v6, 0x0

    .line 1512
    if-eqz v7, :cond_5

    .line 1513
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1512
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1513
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1514
    const/4 v7, 0x0

    .line 1512
    :cond_6
    throw v0
.end method

.method public getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/htc/android/mail/HtcMailCustomization;->MAIL_PROVIDER_CUSTOMIZE_URI:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/android/mail/HtcMailCustomization;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, bundle:Landroid/os/Bundle;
    return-object v0
.end method

.method public insertMailProviderCustomizationData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .locals 17
    .parameter "context"
    .parameter "db"
    .parameter "mailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    if-eqz p3, :cond_3

    .line 237
    const-string v14, "provider"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 239
    .local v9, providerList:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 240
    const-string v4, ""

    .line 241
    .local v4, key_now:Ljava/lang/String;
    const/4 v13, 0x0

    .line 243
    .local v13, values:Landroid/content/ContentValues;
    sget-boolean v14, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "HtcMailCustomization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Insert Mail provider from customization count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v14

    if-ge v3, v14, :cond_2

    .line 245
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plenty_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 248
    .local v7, plentyBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderCustomizationData(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/content/ContentValues;

    move-result-object v13

    .line 250
    const-string v14, "providers"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v3           #i:I
    .end local v4           #key_now:Ljava/lang/String;
    .end local v7           #plentyBundle:Landroid/os/Bundle;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    const-string v14, "HtcMailCustomization"

    const-string v15, "providerList.size() 0>"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v9           #providerList:Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-void

    .line 256
    :cond_3
    sget-boolean v14, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v14, :cond_4

    const-string v14, "HtcMailCustomization"

    const-string v15, "Can\'t find providers in customization data, so insert the providers in mail"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_4
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050014

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 265
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_0
    const-string v14, "mail_providers"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    :goto_3
    :try_start_2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 269
    :try_start_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v10

    .line 270
    .local v10, tag:Ljava/lang/String;
    :try_start_4
    const-string v14, "provider"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v14

    if-nez v14, :cond_6

    .line 291
    .end local v10           #tag:Ljava/lang/String;
    :goto_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 261
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .restart local v6       #parser:Landroid/content/res/XmlResourceParser;
    goto :goto_2

    .line 274
    .restart local v10       #tag:Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v5

    .line 275
    .local v5, numAttrs:I
    :try_start_7
    new-instance v8, Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :try_start_8
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 276
    .local v8, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v5, :cond_7

    .line 277
    :try_start_9
    invoke-interface {v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    move-result-object v2

    .line 278
    .local v2, attrName:Ljava/lang/String;
    :try_start_a
    invoke-interface {v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    move-result-object v12

    .line 280
    .local v12, value:Ljava/lang/String;
    :try_start_b
    invoke-virtual {v8, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 284
    .end local v2           #attrName:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_7
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderDataFromResource(Landroid/content/Context;Ljava/util/HashMap;)Landroid/content/ContentValues;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    move-result-object v11

    .line 286
    .local v11, v:Landroid/content/ContentValues;
    :try_start_d
    const-string v14, "providers"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    const/4 v15, 0x0

    :try_start_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_3

    .line 288
    .end local v3           #i:I
    .end local v5           #numAttrs:I
    .end local v8           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v14

    goto :goto_4

    .line 291
    :catchall_0
    move-exception v14

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v14

    .line 289
    :catch_1
    move-exception v14

    goto :goto_4

    :catch_2
    move-exception v14

    goto :goto_4

    :catch_3
    move-exception v14

    goto :goto_4

    :catch_4
    move-exception v14

    goto :goto_4

    .restart local v10       #tag:Ljava/lang/String;
    :catch_5
    move-exception v14

    goto :goto_4

    :catch_6
    move-exception v14

    goto :goto_4

    :catch_7
    move-exception v14

    goto :goto_4

    .restart local v5       #numAttrs:I
    :catch_8
    move-exception v14

    goto :goto_4

    :catch_9
    move-exception v14

    goto :goto_4

    .restart local v3       #i:I
    .restart local v8       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_a
    move-exception v14

    goto :goto_4

    .restart local v2       #attrName:Ljava/lang/String;
    :catch_b
    move-exception v14

    goto :goto_4

    .restart local v12       #value:Ljava/lang/String;
    :catch_c
    move-exception v14

    goto :goto_4

    .end local v2           #attrName:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :catch_d
    move-exception v14

    goto :goto_4

    .restart local v11       #v:Landroid/content/ContentValues;
    :catch_e
    move-exception v14

    goto :goto_4

    :catch_f
    move-exception v14

    goto :goto_4
.end method

.method public insertMailProviderCustomizationData(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 21
    .parameter "context"
    .parameter "mailProvider"

    .prologue
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    if-eqz p2, :cond_4

    .line 146
    const-string v17, "provider"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 147
    .local v12, providerList:Landroid/os/Bundle;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 149
    const-string v6, ""

    .line 150
    .local v6, key_now:Ljava/lang/String;
    const/16 v16, 0x0

    .line 152
    .local v16, values:Landroid/content/ContentValues;
    sget-boolean v17, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "HtcMailCustomization"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cust_MailProvider :ServerCount>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v8, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 155
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plenty_set"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v5, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 158
    .local v10, plentyBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v5}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderCustomizationData(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/content/ContentValues;

    move-result-object v16

    .line 160
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 162
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #plentyBundle:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 168
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "mail"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v5           #i:I
    .end local v6           #key_now:Ljava/lang/String;
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v12           #providerList:Landroid/os/Bundle;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 169
    .restart local v5       #i:I
    .restart local v6       #key_now:Ljava/lang/String;
    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v12       #providerList:Landroid/os/Bundle;
    .restart local v16       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 170
    .local v4, e:Landroid/os/RemoteException;
    const-string v17, "HtcMailCustomization"

    const-string v18, "catch exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 171
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 172
    .local v4, e:Landroid/content/OperationApplicationException;
    const-string v17, "HtcMailCustomization"

    const-string v18, "catch exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 176
    .end local v4           #e:Landroid/content/OperationApplicationException;
    .end local v5           #i:I
    .end local v6           #key_now:Ljava/lang/String;
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v17, "HtcMailCustomization"

    const-string v18, "providerList.size() 0>"

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    .end local v12           #providerList:Landroid/os/Bundle;
    :cond_4
    sget-boolean v17, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v17, :cond_5

    const-string v17, "HtcMailCustomization"

    const-string v18, "Can\'t find providers in customization data, so insert the providers in mail"

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_5
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050014

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 188
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_1
    const-string v17, "mail_providers"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 190
    :try_start_3
    new-instance v8, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :try_start_4
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 193
    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_3
    :try_start_5
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 194
    :try_start_6
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    move-result-object v13

    .line 195
    .local v13, tag:Ljava/lang/String;
    :try_start_7
    const-string v17, "provider"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    :try_start_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    move-result v17

    if-nez v17, :cond_8

    .line 217
    :try_start_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1b

    move-result v17

    if-lez v17, :cond_6

    .line 219
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1c

    move-result-object v17

    :try_start_b
    const-string v18, "mail"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1d

    :try_start_c
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1e

    .line 229
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #tag:Ljava/lang/String;
    :cond_6
    :goto_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 184
    .end local v9           #parser:Landroid/content/res/XmlResourceParser;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .restart local v9       #parser:Landroid/content/res/XmlResourceParser;
    goto :goto_2

    .line 199
    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #tag:Ljava/lang/String;
    :cond_8
    :try_start_d
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    move-result v7

    .line 200
    .local v7, numAttrs:I
    :try_start_e
    new-instance v11, Ljava/util/HashMap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    :try_start_f
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    .line 201
    .local v11, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v7, :cond_9

    .line 202
    :try_start_10
    invoke-interface {v9, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    move-result-object v2

    .line 203
    .local v2, attrName:Ljava/lang/String;
    :try_start_11
    invoke-interface {v9, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    move-result-object v15

    .line 205
    .local v15, value:Ljava/lang/String;
    :try_start_12
    invoke-virtual {v11, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 209
    .end local v2           #attrName:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_9
    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderDataFromResource(Landroid/content/Context;Ljava/util/HashMap;)Landroid/content/ContentValues;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15

    move-result-object v14

    .line 211
    .local v14, v:Landroid/content/ContentValues;
    :try_start_14
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sProvidersURI:Landroid/net/Uri;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_16

    :try_start_15
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_17

    move-result-object v3

    .line 213
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    :try_start_16
    invoke-virtual {v3, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_18

    move-result-object v3

    .line 214
    :try_start_17
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_19

    move-result-object v17

    :try_start_18
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1a

    goto :goto_3

    .line 226
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #i:I
    .end local v7           #numAttrs:I
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v11           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #v:Landroid/content/ContentValues;
    :catch_2
    move-exception v17

    goto :goto_4

    .line 220
    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #tag:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 221
    .local v4, e:Landroid/os/RemoteException;
    :try_start_19
    const-string v17, "HtcMailCustomization"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1f

    :try_start_1a
    const-string v18, "catch exception"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_20

    :try_start_1b
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_4

    goto :goto_4

    .line 227
    :catch_4
    move-exception v17

    goto :goto_4

    .line 222
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 223
    .local v4, e:Landroid/content/OperationApplicationException;
    :try_start_1c
    const-string v17, "HtcMailCustomization"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_21

    :try_start_1d
    const-string v18, "catch exception"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_22

    :try_start_1e
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_6

    goto :goto_4

    .line 227
    :catch_6
    move-exception v17

    goto :goto_4

    .line 229
    .end local v4           #e:Landroid/content/OperationApplicationException;
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    throw v17

    .line 227
    :catch_7
    move-exception v17

    goto :goto_4

    :catch_8
    move-exception v17

    goto :goto_4

    :catch_9
    move-exception v17

    goto :goto_4

    :catch_a
    move-exception v17

    goto :goto_4

    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_b
    move-exception v17

    goto :goto_4

    :catch_c
    move-exception v17

    goto :goto_4

    .restart local v13       #tag:Ljava/lang/String;
    :catch_d
    move-exception v17

    goto :goto_4

    :catch_e
    move-exception v17

    goto :goto_4

    :catch_f
    move-exception v17

    goto :goto_4

    .restart local v7       #numAttrs:I
    :catch_10
    move-exception v17

    goto :goto_4

    :catch_11
    move-exception v17

    goto :goto_4

    .restart local v5       #i:I
    .restart local v11       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_12
    move-exception v17

    goto/16 :goto_4

    .restart local v2       #attrName:Ljava/lang/String;
    :catch_13
    move-exception v17

    goto/16 :goto_4

    .restart local v15       #value:Ljava/lang/String;
    :catch_14
    move-exception v17

    goto/16 :goto_4

    .end local v2           #attrName:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :catch_15
    move-exception v17

    goto/16 :goto_4

    .restart local v14       #v:Landroid/content/ContentValues;
    :catch_16
    move-exception v17

    goto/16 :goto_4

    :catch_17
    move-exception v17

    goto/16 :goto_4

    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    :catch_18
    move-exception v17

    goto/16 :goto_4

    :catch_19
    move-exception v17

    goto/16 :goto_4

    :catch_1a
    move-exception v17

    goto/16 :goto_4

    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #i:I
    .end local v7           #numAttrs:I
    .end local v11           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #v:Landroid/content/ContentValues;
    :catch_1b
    move-exception v17

    goto/16 :goto_4

    :catch_1c
    move-exception v17

    goto/16 :goto_4

    :catch_1d
    move-exception v17

    goto/16 :goto_4

    :catch_1e
    move-exception v17

    goto/16 :goto_4

    .local v4, e:Landroid/os/RemoteException;
    :catch_1f
    move-exception v17

    goto/16 :goto_4

    :catch_20
    move-exception v17

    goto/16 :goto_4

    .local v4, e:Landroid/content/OperationApplicationException;
    :catch_21
    move-exception v17

    goto/16 :goto_4

    :catch_22
    move-exception v17

    goto/16 :goto_4
.end method

.method public insertMailProviderSettingCustomizationData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .locals 17
    .parameter "context"
    .parameter "db"
    .parameter "mailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    if-eqz p3, :cond_1

    .line 460
    const-string v14, "provider_setting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 462
    .local v9, providerList:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 463
    const-string v4, ""

    .line 464
    .local v4, key_now:Ljava/lang/String;
    const/4 v13, 0x0

    .line 466
    .local v13, values:Landroid/content/ContentValues;
    sget-boolean v14, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "HtcMailCustomization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Insert Mail provider setting from customization count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v14

    if-ge v3, v14, :cond_1

    .line 468
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plenty_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 471
    .local v7, plentyBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderSettingCustomizationData(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/content/ContentValues;

    move-result-object v13

    .line 473
    const-string v14, "providersettings"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v3           #i:I
    .end local v4           #key_now:Ljava/lang/String;
    .end local v7           #plentyBundle:Landroid/os/Bundle;
    .end local v9           #providerList:Landroid/os/Bundle;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f05001b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 481
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v14, "provider_settings"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v6, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 484
    :goto_1
    :try_start_2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 485
    :try_start_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v10

    .line 486
    .local v10, tag:Ljava/lang/String;
    :try_start_4
    const-string v14, "setting"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v14

    if-nez v14, :cond_2

    .line 508
    .end local v10           #tag:Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 510
    return-void

    .line 490
    .restart local v10       #tag:Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v5

    .line 492
    .local v5, numAttrs:I
    :try_start_7
    new-instance v8, Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :try_start_8
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 493
    .local v8, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_3

    .line 494
    :try_start_9
    invoke-interface {v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    move-result-object v2

    .line 495
    .local v2, attrName:Ljava/lang/String;
    :try_start_a
    invoke-interface {v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    move-result-object v12

    .line 497
    .local v12, value:Ljava/lang/String;
    :try_start_b
    invoke-virtual {v8, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 501
    .end local v2           #attrName:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_3
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderSettingsDataFromResource(Landroid/content/Context;Ljava/util/HashMap;)Landroid/content/ContentValues;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    move-result-object v11

    .line 503
    .local v11, v:Landroid/content/ContentValues;
    :try_start_d
    const-string v14, "providersettings"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    const/4 v15, 0x0

    :try_start_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_1

    .line 505
    .end local v3           #i:I
    .end local v5           #numAttrs:I
    .end local v8           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v14

    goto :goto_2

    .line 508
    :catchall_0
    move-exception v14

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v14

    .line 506
    :catch_1
    move-exception v14

    goto :goto_2

    :catch_2
    move-exception v14

    goto :goto_2

    :catch_3
    move-exception v14

    goto :goto_2

    :catch_4
    move-exception v14

    goto :goto_2

    .restart local v10       #tag:Ljava/lang/String;
    :catch_5
    move-exception v14

    goto :goto_2

    :catch_6
    move-exception v14

    goto :goto_2

    :catch_7
    move-exception v14

    goto :goto_2

    .restart local v5       #numAttrs:I
    :catch_8
    move-exception v14

    goto :goto_2

    :catch_9
    move-exception v14

    goto :goto_2

    .restart local v3       #i:I
    .restart local v8       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_a
    move-exception v14

    goto :goto_2

    .restart local v2       #attrName:Ljava/lang/String;
    :catch_b
    move-exception v14

    goto :goto_2

    .restart local v12       #value:Ljava/lang/String;
    :catch_c
    move-exception v14

    goto :goto_2

    .end local v2           #attrName:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :catch_d
    move-exception v14

    goto :goto_2

    .restart local v11       #v:Landroid/content/ContentValues;
    :catch_e
    move-exception v14

    goto :goto_2

    :catch_f
    move-exception v14

    goto :goto_2
.end method

.method public insertMailProviderSettingCustomizationData(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 21
    .parameter "context"
    .parameter "mailProvider"

    .prologue
    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v8, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_1

    .line 388
    const-string v17, "provider_setting"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 390
    .local v12, providerList:Landroid/os/Bundle;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 392
    const-string v6, ""

    .line 393
    .local v6, key_now:Ljava/lang/String;
    const/16 v16, 0x0

    .line 395
    .local v16, values:Landroid/content/ContentValues;
    sget-boolean v17, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "HtcMailCustomization"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cust_MailProviderST :ProviderCount>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 397
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plenty_set"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v5, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 398
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 400
    .local v10, plentyBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v5}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderSettingCustomizationData(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/content/ContentValues;

    move-result-object v16

    .line 402
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 404
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 411
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #i:I
    .end local v6           #key_now:Ljava/lang/String;
    .end local v10           #plentyBundle:Landroid/os/Bundle;
    .end local v12           #providerList:Landroid/os/Bundle;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f05001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 413
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v17, "provider_settings"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 416
    :goto_1
    :try_start_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 417
    :try_start_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v13

    .line 418
    .local v13, tag:Ljava/lang/String;
    :try_start_4
    const-string v17, "setting"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-result v17

    if-nez v17, :cond_3

    .line 441
    :try_start_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_17

    move-result v17

    if-lez v17, :cond_2

    .line 443
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_18

    move-result-object v17

    :try_start_8
    const-string v18, "mail"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19

    :try_start_9
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a

    .line 453
    .end local v13           #tag:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 455
    return-void

    .line 422
    .restart local v13       #tag:Ljava/lang/String;
    :cond_3
    :try_start_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    move-result v7

    .line 424
    .local v7, numAttrs:I
    :try_start_b
    new-instance v11, Ljava/util/HashMap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    :try_start_c
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 425
    .local v11, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v7, :cond_4

    .line 426
    :try_start_d
    invoke-interface {v9, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    move-result-object v2

    .line 427
    .local v2, attrName:Ljava/lang/String;
    :try_start_e
    invoke-interface {v9, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    move-result-object v15

    .line 429
    .local v15, value:Ljava/lang/String;
    :try_start_f
    invoke-virtual {v11, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    .line 425
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 433
    .end local v2           #attrName:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_4
    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/htc/android/mail/HtcMailCustomization;->getProviderSettingsDataFromResource(Landroid/content/Context;Ljava/util/HashMap;)Landroid/content/ContentValues;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    move-result-object v14

    .line 435
    .local v14, v:Landroid/content/ContentValues;
    :try_start_11
    sget-object v17, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    :try_start_12
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    move-result-object v3

    .line 437
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    :try_start_13
    invoke-virtual {v3, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14

    move-result-object v3

    .line 438
    :try_start_14
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15

    move-result-object v17

    :try_start_15
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16

    goto :goto_1

    .line 450
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #i:I
    .end local v7           #numAttrs:I
    .end local v11           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v17

    goto :goto_2

    .line 444
    .restart local v13       #tag:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 445
    .local v4, e:Landroid/os/RemoteException;
    :try_start_16
    const-string v17, "HtcMailCustomization"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1b

    :try_start_17
    const-string v18, "catch exception"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1c

    :try_start_18
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2

    goto :goto_2

    .line 451
    :catch_2
    move-exception v17

    goto :goto_2

    .line 446
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 447
    .local v4, e:Landroid/content/OperationApplicationException;
    :try_start_19
    const-string v17, "HtcMailCustomization"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1d

    :try_start_1a
    const-string v18, "catch exception"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1e

    :try_start_1b
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_4

    goto :goto_2

    .line 451
    :catch_4
    move-exception v17

    goto :goto_2

    .line 453
    .end local v4           #e:Landroid/content/OperationApplicationException;
    .end local v13           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    throw v17

    .line 451
    :catch_5
    move-exception v17

    goto :goto_2

    :catch_6
    move-exception v17

    goto :goto_2

    :catch_7
    move-exception v17

    goto :goto_2

    :catch_8
    move-exception v17

    goto :goto_2

    .restart local v13       #tag:Ljava/lang/String;
    :catch_9
    move-exception v17

    goto :goto_2

    :catch_a
    move-exception v17

    goto :goto_2

    :catch_b
    move-exception v17

    goto :goto_2

    .restart local v7       #numAttrs:I
    :catch_c
    move-exception v17

    goto :goto_2

    :catch_d
    move-exception v17

    goto :goto_2

    .restart local v5       #i:I
    .restart local v11       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_e
    move-exception v17

    goto :goto_2

    .restart local v2       #attrName:Ljava/lang/String;
    :catch_f
    move-exception v17

    goto :goto_2

    .restart local v15       #value:Ljava/lang/String;
    :catch_10
    move-exception v17

    goto :goto_2

    .end local v2           #attrName:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :catch_11
    move-exception v17

    goto :goto_2

    .restart local v14       #v:Landroid/content/ContentValues;
    :catch_12
    move-exception v17

    goto :goto_2

    :catch_13
    move-exception v17

    goto :goto_2

    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    :catch_14
    move-exception v17

    goto :goto_2

    :catch_15
    move-exception v17

    goto :goto_2

    :catch_16
    move-exception v17

    goto/16 :goto_2

    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #i:I
    .end local v7           #numAttrs:I
    .end local v11           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #v:Landroid/content/ContentValues;
    :catch_17
    move-exception v17

    goto/16 :goto_2

    :catch_18
    move-exception v17

    goto/16 :goto_2

    :catch_19
    move-exception v17

    goto/16 :goto_2

    :catch_1a
    move-exception v17

    goto/16 :goto_2

    .local v4, e:Landroid/os/RemoteException;
    :catch_1b
    move-exception v17

    goto/16 :goto_2

    :catch_1c
    move-exception v17

    goto/16 :goto_2

    .local v4, e:Landroid/content/OperationApplicationException;
    :catch_1d
    move-exception v17

    goto/16 :goto_2

    :catch_1e
    move-exception v17

    goto/16 :goto_2
.end method

.method public loadCustSignature(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 11
    .parameter "context"
    .parameter "mailProvider"

    .prologue
    .line 1573
    if-eqz p2, :cond_2

    .line 1574
    const-string v8, "mail_signature_localization"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1575
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1576
    const-string v3, "plenty_set"

    .line 1577
    .local v3, key_plenty:Ljava/lang/String;
    const-string v2, ""

    .line 1578
    .local v2, key_now:Ljava/lang/String;
    const-string v4, "locale"

    .line 1580
    .local v4, locale_key:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/android/mail/Util;->clearSignaturePref(Landroid/content/Context;)V

    .line 1581
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 1582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1583
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1584
    .local v6, plentyBundle:Landroid/os/Bundle;
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    .local v5, locale_string:Ljava/lang/String;
    const-string v8, "signature"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1586
    .local v7, signature:Ljava/lang/String;
    sget-boolean v8, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcMailCustomization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_MailSigLocale: group_id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", locale:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", signature:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    :cond_0
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 1588
    invoke-static {p1, v5, v7}, Lcom/htc/android/mail/Util;->writeSignatureToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1593
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #i:I
    .end local v2           #key_now:Ljava/lang/String;
    .end local v3           #key_plenty:Ljava/lang/String;
    .end local v4           #locale_key:Ljava/lang/String;
    .end local v5           #locale_string:Ljava/lang/String;
    .end local v6           #plentyBundle:Landroid/os/Bundle;
    .end local v7           #signature:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public preInstallAccount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
    .locals 58
    .parameter "context"
    .parameter "db"
    .parameter "mailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1012
    if-eqz p3, :cond_13

    .line 1013
    const-string v2, "accounts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 1014
    .local v19, accounts:Landroid/os/Bundle;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 1015
    const-string v40, "name"

    .line 1016
    .local v40, key_name:Ljava/lang/String;
    const-string v36, "emailaddress"

    .line 1017
    .local v36, key_emailAddress:Ljava/lang/String;
    const-string v35, "domain"

    .line 1018
    .local v35, key_domain:Ljava/lang/String;
    const-string v38, "inprotocol"

    .line 1019
    .local v38, key_inProtocol:Ljava/lang/String;
    const-string v39, "inusername"

    .line 1020
    .local v39, key_inUserName:Ljava/lang/String;
    const-string v37, "inpassword"

    .line 1021
    .local v37, key_inPassword:Ljava/lang/String;
    const-string v43, "outusername"

    .line 1022
    .local v43, key_outUserName:Ljava/lang/String;
    const-string v42, "outpassword"

    .line 1023
    .local v42, key_outPassword:Ljava/lang/String;
    const-string v34, "description"

    .line 1024
    .local v34, key_description:Ljava/lang/String;
    const-string v44, "plenty_set"

    .line 1025
    .local v44, key_plenty:Ljava/lang/String;
    const-string v41, ""

    .line 1026
    .local v41, key_now:Ljava/lang/String;
    new-instance v57, Landroid/content/ContentValues;

    invoke-direct/range {v57 .. v57}, Landroid/content/ContentValues;-><init>()V

    .line 1028
    .local v57, values:Landroid/content/ContentValues;
    sget-boolean v2, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcMailCustomization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert Mail account from customization count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_0
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_e

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v26, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1031
    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v52

    .line 1033
    .local v52, plentyBundle:Landroid/os/Bundle;
    move-object/from16 v0, v52

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1034
    .local v24, domain:Ljava/lang/String;
    if-eqz v24, :cond_1

    const-string v2, ""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1029
    :cond_1
    :goto_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1036
    :cond_2
    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1037
    .local v31, inprotocol:Ljava/lang/String;
    if-eqz v31, :cond_1

    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1039
    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1040
    .local v47, name:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1041
    .local v20, addr:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1042
    .local v33, inusername:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1043
    .local v29, inpassword:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1044
    .local v51, outusername:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1045
    .local v48, outpassword:Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1047
    .local v23, description:Ljava/lang/String;
    const-string v5, "_domain = ? AND _inprotocol = ?"

    .line 1048
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v24, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1049
    .local v6, args:[Ljava/lang/String;
    const-string v3, "providersettings"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1050
    .local v21, c:Landroid/database/Cursor;
    if-eqz v21, :cond_1

    .line 1051
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1052
    const-string v2, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 1053
    .local v27, id:J
    const-string v2, "_provider"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 1054
    .local v53, provider:Ljava/lang/String;
    const-string v2, "_inserver"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1055
    .local v32, inserver:Ljava/lang/String;
    const-string v2, "_inport"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1056
    .local v30, inport:I
    const-string v2, "_outserver"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1057
    .local v50, outserver:Ljava/lang/String;
    const-string v2, "_outport"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 1058
    .local v49, outport:I
    const-string v2, "_useSSLin"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 1059
    .local v55, useSSLin:I
    const-string v2, "_useSSLout"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1060
    .local v56, useSSLout:I
    const-string v2, "_smtpauth"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 1063
    .local v54, smtpauth:I
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1064
    const-string v2, "_name"

    move-object/from16 v0, v57

    move-object/from16 v1, v47

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v2, "_protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    const-string v2, "_inserver"

    move-object/from16 v0, v57

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v2, "_inport"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    const-string v2, "_outserver"

    move-object/from16 v0, v57

    move-object/from16 v1, v50

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v2, "_outport"

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    const-string v2, "_emailaddress"

    move-object/from16 v0, v57

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v2, "_provider"

    move-object/from16 v0, v57

    move-object/from16 v1, v53

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v2, "_providerid"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1073
    const-string v2, "_username"

    move-object/from16 v0, v57

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v2, "_password"

    move-object/from16 v0, v57

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v2, "_outusername"

    move-object/from16 v0, v57

    move-object/from16 v1, v51

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v2, "_outpassword"

    move-object/from16 v0, v57

    move-object/from16 v1, v48

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v2, "_useSSLin"

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    const-string v2, "_useSSLout"

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    const-string v2, "_flags"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string v2, "_desc"

    move-object/from16 v0, v57

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v2, "_smtpauth"

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v57

    .line 1083
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    .line 1086
    .local v17, accountId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v17, v2

    if-eqz v2, :cond_8

    .line 1087
    const-wide/16 v45, -0x1

    .line 1088
    .local v45, mailboxId:J
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1089
    :cond_3
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1090
    const-string v2, "_undecodename"

    const v3, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v2, "_decodename"

    const v3, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v2, "_shortname"

    const v3, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v2, "_serverfolder"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    const-string v2, "_defaultfolder"

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1096
    const-string v2, "_movegroup"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    const-string v2, "_showsender"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1100
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_4

    .line 1101
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1102
    const-string v2, "_defaultfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1103
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1104
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1107
    :cond_4
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1108
    const-string v2, "_undecodename"

    const v3, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v2, "_decodename"

    const v3, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v2, "_shortname"

    const v3, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v2, "_serverfolder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1113
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1114
    const-string v2, "_movegroup"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    const-string v2, "_showsender"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1118
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_5

    .line 1119
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1120
    const-string v2, "_trashfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1121
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1122
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1125
    :cond_5
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1126
    const-string v2, "_undecodename"

    const v3, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v2, "_decodename"

    const v3, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v2, "_shortname"

    const v3, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v2, "_serverfolder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1132
    const-string v2, "_movegroup"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1133
    const-string v2, "_showsender"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1136
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_6

    .line 1137
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1138
    const-string v2, "_draftfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1139
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1140
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1143
    :cond_6
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1144
    const-string v2, "_undecodename"

    const v3, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v2, "_decodename"

    const v3, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v2, "_shortname"

    const v3, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v2, "_serverfolder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1148
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1149
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1150
    const-string v2, "_movegroup"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    const-string v2, "_showsender"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1154
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_7

    .line 1155
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1156
    const-string v2, "_outfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1157
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1161
    :cond_7
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1162
    const-string v2, "_undecodename"

    const v3, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const-string v2, "_decodename"

    const v3, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v2, "_shortname"

    const v3, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v2, "_serverfolder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1168
    const-string v2, "_movegroup"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    const-string v2, "_showsender"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1172
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_8

    .line 1173
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1174
    const-string v2, "_sentfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1175
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1176
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1296
    .end local v17           #accountId:J
    .end local v27           #id:J
    .end local v30           #inport:I
    .end local v32           #inserver:Ljava/lang/String;
    .end local v45           #mailboxId:J
    .end local v49           #outport:I
    .end local v50           #outserver:Ljava/lang/String;
    .end local v53           #provider:Ljava/lang/String;
    .end local v54           #smtpauth:I
    .end local v55           #useSSLin:I
    .end local v56           #useSSLout:I
    :cond_8
    :goto_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1179
    .restart local v17       #accountId:J
    .restart local v27       #id:J
    .restart local v30       #inport:I
    .restart local v32       #inserver:Ljava/lang/String;
    .restart local v45       #mailboxId:J
    .restart local v49       #outport:I
    .restart local v50       #outserver:Ljava/lang/String;
    .restart local v53       #provider:Ljava/lang/String;
    .restart local v54       #smtpauth:I
    .restart local v55       #useSSLin:I
    .restart local v56       #useSSLout:I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1180
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1181
    const-string v2, "_undecodename"

    const-string v3, "INBOX"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v2, "_decodename"

    const-string v3, "INBOX"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v2, "_shortname"

    const v3, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v2, "_serverfolder"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1185
    const-string v2, "_defaultfolder"

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1187
    const-string v2, "_movegroup"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    const-string v2, "_showsender"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1189
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1191
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_a

    .line 1192
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1193
    const-string v2, "_defaultfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1194
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1195
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1198
    :cond_a
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1199
    const v2, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1201
    .local v15, IMAPStr:Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/lang/String;

    const-string v2, "IMAP-mailbox-name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v15           #IMAPStr:Ljava/lang/String;
    .local v16, IMAPStr:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1205
    .end local v16           #IMAPStr:Ljava/lang/String;
    .restart local v15       #IMAPStr:Ljava/lang/String;
    :goto_3
    const-string v2, "_undecodename"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v2, "_decodename"

    const v3, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v2, "_shortname"

    const v3, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v2, "_serverfolder"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1211
    const-string v2, "_movegroup"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    const-string v2, "_showsender"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1215
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_b

    .line 1216
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1217
    const-string v2, "_trashfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1218
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1219
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1222
    :cond_b
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1223
    const v2, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1225
    :try_start_1
    new-instance v16, Ljava/lang/String;

    const-string v2, "IMAP-mailbox-name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v15           #IMAPStr:Ljava/lang/String;
    .restart local v16       #IMAPStr:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1229
    .end local v16           #IMAPStr:Ljava/lang/String;
    .restart local v15       #IMAPStr:Ljava/lang/String;
    :goto_4
    const-string v2, "_undecodename"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v2, "_decodename"

    const v3, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v2, "_shortname"

    const v3, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v2, "_serverfolder"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1233
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1234
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1235
    const-string v2, "_movegroup"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1236
    const-string v2, "_showsender"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1237
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1239
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_c

    .line 1240
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1241
    const-string v2, "_draftfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1242
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1243
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1246
    :cond_c
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1247
    const v2, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1249
    :try_start_2
    new-instance v16, Ljava/lang/String;

    const-string v2, "IMAP-mailbox-name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v15           #IMAPStr:Ljava/lang/String;
    .restart local v16       #IMAPStr:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1253
    .end local v16           #IMAPStr:Ljava/lang/String;
    .restart local v15       #IMAPStr:Ljava/lang/String;
    :goto_5
    const-string v2, "_undecodename"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v2, "_decodename"

    const v3, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v2, "_shortname"

    const v3, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "_serverfolder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1259
    const-string v2, "_movegroup"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    const-string v2, "_showsender"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1261
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1263
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_d

    .line 1264
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1265
    const-string v2, "_outfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1266
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1267
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1270
    :cond_d
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1271
    const v2, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1273
    :try_start_3
    new-instance v16, Ljava/lang/String;

    const-string v2, "IMAP-mailbox-name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v15           #IMAPStr:Ljava/lang/String;
    .restart local v16       #IMAPStr:Ljava/lang/String;
    move-object/from16 v15, v16

    .line 1277
    .end local v16           #IMAPStr:Ljava/lang/String;
    .restart local v15       #IMAPStr:Ljava/lang/String;
    :goto_6
    const-string v2, "_undecodename"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v2, "_decodename"

    const v3, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v2, "_shortname"

    const v3, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v2, "_serverfolder"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v2, "_defaultfolder"

    const v3, 0x7ffffffd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    const-string v2, "_account"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1283
    const-string v2, "_movegroup"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    const-string v2, "_showsender"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1285
    const-string v2, "mailboxs"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v45

    .line 1287
    const-wide/16 v2, -0x1

    cmp-long v2, v45, v2

    if-eqz v2, :cond_8

    .line 1288
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentValues;->clear()V

    .line 1289
    const-string v2, "_sentfolderId"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1290
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_id = \'%d\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1291
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1301
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #args:[Ljava/lang/String;
    .end local v15           #IMAPStr:Ljava/lang/String;
    .end local v17           #accountId:J
    .end local v20           #addr:Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    .end local v23           #description:Ljava/lang/String;
    .end local v24           #domain:Ljava/lang/String;
    .end local v27           #id:J
    .end local v29           #inpassword:Ljava/lang/String;
    .end local v30           #inport:I
    .end local v31           #inprotocol:Ljava/lang/String;
    .end local v32           #inserver:Ljava/lang/String;
    .end local v33           #inusername:Ljava/lang/String;
    .end local v45           #mailboxId:J
    .end local v47           #name:Ljava/lang/String;
    .end local v48           #outpassword:Ljava/lang/String;
    .end local v49           #outport:I
    .end local v50           #outserver:Ljava/lang/String;
    .end local v51           #outusername:Ljava/lang/String;
    .end local v52           #plentyBundle:Landroid/os/Bundle;
    .end local v53           #provider:Ljava/lang/String;
    .end local v54           #smtpauth:I
    .end local v55           #useSSLin:I
    .end local v56           #useSSLout:I
    :cond_e
    const-string v5, "_del <> 1"

    .line 1302
    .restart local v5       #where:Ljava/lang/String;
    const-string v8, "accounts"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "count(_id) as _total"

    aput-object v3, v9, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p2

    move-object v10, v5

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1303
    .restart local v21       #c:Landroid/database/Cursor;
    if-eqz v21, :cond_10

    .line 1304
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1305
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1306
    .local v22, count:I
    const-string v2, "account"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 1307
    .local v25, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "totalCount"

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1308
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1310
    .end local v22           #count:I
    .end local v25           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1314
    :cond_10
    const-string v5, "_del <> 1 AND _defaultaccount = 1"

    .line 1315
    const-string v8, "accounts"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "count(_id) as _total"

    aput-object v3, v9, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p2

    move-object v10, v5

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1316
    if-eqz v21, :cond_12

    .line 1317
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1318
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_11

    .line 1319
    const-string v2, "update accounts set _defaultaccount = 1 where _id = (select min(_id) from accounts where _del <> 1)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1322
    :cond_11
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_12
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/HtcMailCustomization$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/htc/android/mail/HtcMailCustomization$2;-><init>(Lcom/htc/android/mail/HtcMailCustomization;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1333
    .end local v5           #where:Ljava/lang/String;
    .end local v19           #accounts:Landroid/os/Bundle;
    .end local v21           #c:Landroid/database/Cursor;
    .end local v26           #i:I
    .end local v34           #key_description:Ljava/lang/String;
    .end local v35           #key_domain:Ljava/lang/String;
    .end local v36           #key_emailAddress:Ljava/lang/String;
    .end local v37           #key_inPassword:Ljava/lang/String;
    .end local v38           #key_inProtocol:Ljava/lang/String;
    .end local v39           #key_inUserName:Ljava/lang/String;
    .end local v40           #key_name:Ljava/lang/String;
    .end local v41           #key_now:Ljava/lang/String;
    .end local v42           #key_outPassword:Ljava/lang/String;
    .end local v43           #key_outUserName:Ljava/lang/String;
    .end local v44           #key_plenty:Ljava/lang/String;
    .end local v57           #values:Landroid/content/ContentValues;
    :cond_13
    return-void

    .line 1274
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #args:[Ljava/lang/String;
    .restart local v15       #IMAPStr:Ljava/lang/String;
    .restart local v17       #accountId:J
    .restart local v19       #accounts:Landroid/os/Bundle;
    .restart local v20       #addr:Ljava/lang/String;
    .restart local v21       #c:Landroid/database/Cursor;
    .restart local v23       #description:Ljava/lang/String;
    .restart local v24       #domain:Ljava/lang/String;
    .restart local v26       #i:I
    .restart local v27       #id:J
    .restart local v29       #inpassword:Ljava/lang/String;
    .restart local v30       #inport:I
    .restart local v31       #inprotocol:Ljava/lang/String;
    .restart local v32       #inserver:Ljava/lang/String;
    .restart local v33       #inusername:Ljava/lang/String;
    .restart local v34       #key_description:Ljava/lang/String;
    .restart local v35       #key_domain:Ljava/lang/String;
    .restart local v36       #key_emailAddress:Ljava/lang/String;
    .restart local v37       #key_inPassword:Ljava/lang/String;
    .restart local v38       #key_inProtocol:Ljava/lang/String;
    .restart local v39       #key_inUserName:Ljava/lang/String;
    .restart local v40       #key_name:Ljava/lang/String;
    .restart local v41       #key_now:Ljava/lang/String;
    .restart local v42       #key_outPassword:Ljava/lang/String;
    .restart local v43       #key_outUserName:Ljava/lang/String;
    .restart local v44       #key_plenty:Ljava/lang/String;
    .restart local v45       #mailboxId:J
    .restart local v47       #name:Ljava/lang/String;
    .restart local v48       #outpassword:Ljava/lang/String;
    .restart local v49       #outport:I
    .restart local v50       #outserver:Ljava/lang/String;
    .restart local v51       #outusername:Ljava/lang/String;
    .restart local v52       #plentyBundle:Landroid/os/Bundle;
    .restart local v53       #provider:Ljava/lang/String;
    .restart local v54       #smtpauth:I
    .restart local v55       #useSSLin:I
    .restart local v56       #useSSLout:I
    .restart local v57       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    goto/16 :goto_6

    .line 1250
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 1226
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 1202
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method

.method public preInstallAccount(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 70
    .parameter "context"
    .parameter "mailProvider"

    .prologue
    .line 514
    if-eqz p2, :cond_8

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 517
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v58, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v57, -0x1

    .line 521
    .local v57, operation_index:I
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v56, newAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "accounts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 524
    .local v22, accounts:Landroid/os/Bundle;
    if-eqz v22, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 525
    const-string v47, "name"

    .line 526
    .local v47, key_name:Ljava/lang/String;
    const-string v43, "emailaddress"

    .line 527
    .local v43, key_emailAddress:Ljava/lang/String;
    const-string v42, "domain"

    .line 528
    .local v42, key_domain:Ljava/lang/String;
    const-string v45, "inprotocol"

    .line 529
    .local v45, key_inProtocol:Ljava/lang/String;
    const-string v46, "inusername"

    .line 530
    .local v46, key_inUserName:Ljava/lang/String;
    const-string v44, "inpassword"

    .line 531
    .local v44, key_inPassword:Ljava/lang/String;
    const-string v50, "outusername"

    .line 532
    .local v50, key_outUserName:Ljava/lang/String;
    const-string v49, "outpassword"

    .line 533
    .local v49, key_outPassword:Ljava/lang/String;
    const-string v41, "description"

    .line 534
    .local v41, key_description:Ljava/lang/String;
    const-string v51, "plenty_set"

    .line 535
    .local v51, key_plenty:Ljava/lang/String;
    const-string v48, ""

    .line 536
    .local v48, key_now:Ljava/lang/String;
    new-instance v69, Landroid/content/ContentValues;

    invoke-direct/range {v69 .. v69}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v69, values:Landroid/content/ContentValues;
    sget-boolean v3, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcMailCustomization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert Mail account from customization count:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    const/16 v32, 0x0

    .local v32, i:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_7

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v32, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 541
    move-object/from16 v0, v22

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v63

    .line 543
    .local v63, plentyBundle:Landroid/os/Bundle;
    move-object/from16 v0, v63

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 544
    .local v28, domain:Ljava/lang/String;
    if-eqz v28, :cond_1

    const-string v3, ""

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    :cond_1
    :goto_1
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 546
    :cond_2
    move-object/from16 v0, v63

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 547
    .local v38, inprotocol:Ljava/lang/String;
    if-eqz v38, :cond_1

    const-string v3, ""

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 549
    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 550
    .local v55, name:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 551
    .local v23, addr:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 552
    .local v40, inusername:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 553
    .local v36, inpassword:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 554
    .local v62, outusername:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 555
    .local v59, outpassword:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 557
    .local v27, description:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_3

    .line 558
    const-string v3, "HtcMailCustomization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cust_MailAccountSetting: group_id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", domain:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", inprotocol:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", name:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", emailaddress:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", inusername:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", inpassword:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", outusername:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", outpassword:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", description:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3
    const-string v5, "_emailaddress = ?"

    .line 572
    .local v5, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v23, v6, v3

    .line 573
    .local v6, account_args:[Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 574
    .local v20, account_cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 575
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 576
    .local v26, count:I
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 577
    if-nez v26, :cond_1

    .line 583
    const-string v3, "HtcMailCustomization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert account: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, v56

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    const-string v5, "_domain = ? AND _inprotocol = ?"

    .line 587
    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v28, v11, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 588
    .local v11, settings_args:[Ljava/lang/String;
    sget-object v8, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 589
    .local v25, c:Landroid/database/Cursor;
    if-eqz v25, :cond_1

    .line 590
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 592
    .local v34, id:J
    const-string v3, "_provider"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 593
    .local v64, provider:Ljava/lang/String;
    const-string v3, "_inserver"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 594
    .local v39, inserver:Ljava/lang/String;
    const-string v3, "_inport"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 595
    .local v37, inport:I
    const-string v3, "_outserver"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 596
    .local v61, outserver:Ljava/lang/String;
    const-string v3, "_outport"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 597
    .local v60, outport:I
    const-string v3, "_useSSLin"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 598
    .local v67, useSSLin:I
    const-string v3, "_useSSLout"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v68

    .line 599
    .local v68, useSSLout:I
    const-string v3, "_smtpauth"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 602
    .local v66, smtpauth:I
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 603
    const-string v3, "_name"

    move-object/from16 v0, v69

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v3, "_protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v3, "_inserver"

    move-object/from16 v0, v69

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v3, "_inport"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string v3, "_outserver"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v3, "_outport"

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v3, "_emailaddress"

    move-object/from16 v0, v69

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v3, "_provider"

    move-object/from16 v0, v69

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v3, "_providerid"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 612
    const-string v3, "_username"

    move-object/from16 v0, v69

    move-object/from16 v1, v40

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v3, "_password"

    move-object/from16 v0, v69

    move-object/from16 v1, v36

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v3, "_outusername"

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v3, "_outpassword"

    move-object/from16 v0, v69

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v3, "_useSSLin"

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v3, "_useSSLout"

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v3, "_flags"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v3, "_desc"

    move-object/from16 v0, v69

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v3, "_smtpauth"

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    move-object/from16 v0, v69

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v69

    .line 623
    add-int/lit8 v57, v57, 0x1

    .line 624
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 626
    .local v24, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 627
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    move/from16 v21, v57

    .line 631
    .local v21, account_operation_index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 634
    :cond_4
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 635
    const-string v3, "_undecodename"

    const v4, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v3, "_decodename"

    const v4, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v3, "_shortname"

    const v4, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v3, "_serverfolder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string v3, "_defaultfolder"

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v3, "_movegroup"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string v3, "_showsender"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string v3, "_default_sync"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    add-int/lit8 v57, v57, 0x1

    .line 646
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 647
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 648
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 649
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    move/from16 v52, v57

    .line 653
    .local v52, mailbox_operation_index:I
    add-int/lit8 v57, v57, 0x1

    .line 654
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 655
    const-string v5, "_id = ?"

    .line 656
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 657
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 658
    const-string v3, "_defaultfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 659
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 660
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 665
    const-string v3, "_undecodename"

    const v4, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v3, "_decodename"

    const v4, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v3, "_shortname"

    const v4, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v3, "_serverfolder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v3, "_movegroup"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v3, "_showsender"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    add-int/lit8 v57, v57, 0x1

    .line 674
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 675
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 676
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 677
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    move/from16 v52, v57

    .line 681
    add-int/lit8 v57, v57, 0x1

    .line 682
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 683
    const-string v5, "_id = ?"

    .line 684
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 685
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 686
    const-string v3, "_trashfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 687
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 688
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 693
    const-string v3, "_undecodename"

    const v4, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v3, "_decodename"

    const v4, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v3, "_shortname"

    const v4, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v3, "_serverfolder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v3, "_movegroup"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    const-string v3, "_showsender"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    add-int/lit8 v57, v57, 0x1

    .line 702
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 703
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 704
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 705
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    move/from16 v52, v57

    .line 709
    add-int/lit8 v57, v57, 0x1

    .line 710
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 711
    const-string v5, "_id = ?"

    .line 712
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 713
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 714
    const-string v3, "_draftfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 715
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 716
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 721
    const-string v3, "_undecodename"

    const v4, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v3, "_decodename"

    const v4, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v3, "_shortname"

    const v4, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v3, "_serverfolder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    const-string v3, "_movegroup"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    const-string v3, "_showsender"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    add-int/lit8 v57, v57, 0x1

    .line 730
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 731
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 732
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 733
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    move/from16 v52, v57

    .line 737
    add-int/lit8 v57, v57, 0x1

    .line 738
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 739
    const-string v5, "_id = ?"

    .line 740
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 741
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 742
    const-string v3, "_outfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 743
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 744
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 749
    const-string v3, "_undecodename"

    const v4, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v3, "_decodename"

    const v4, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v3, "_shortname"

    const v4, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v3, "_serverfolder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    const-string v3, "_movegroup"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    const-string v3, "_showsender"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    add-int/lit8 v57, v57, 0x1

    .line 758
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 759
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 760
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 761
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    move/from16 v52, v57

    .line 766
    add-int/lit8 v57, v57, 0x1

    .line 767
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 768
    const-string v5, "_id = ?"

    .line 769
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 770
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 771
    const-string v3, "_sentfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 772
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 773
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    .end local v21           #account_operation_index:I
    .end local v24           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v34           #id:J
    .end local v37           #inport:I
    .end local v39           #inserver:Ljava/lang/String;
    .end local v52           #mailbox_operation_index:I
    .end local v60           #outport:I
    .end local v61           #outserver:Ljava/lang/String;
    .end local v64           #provider:Ljava/lang/String;
    .end local v66           #smtpauth:I
    .end local v67           #useSSLin:I
    .end local v68           #useSSLout:I
    :cond_5
    :goto_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 776
    .restart local v21       #account_operation_index:I
    .restart local v24       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v34       #id:J
    .restart local v37       #inport:I
    .restart local v39       #inserver:Ljava/lang/String;
    .restart local v60       #outport:I
    .restart local v61       #outserver:Ljava/lang/String;
    .restart local v64       #provider:Ljava/lang/String;
    .restart local v66       #smtpauth:I
    .restart local v67       #useSSLin:I
    .restart local v68       #useSSLout:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->convertInprotocol(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 778
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 779
    const-string v3, "_undecodename"

    const-string v4, "INBOX"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v3, "_decodename"

    const-string v4, "INBOX"

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v3, "_shortname"

    const v4, 0x7f0b01ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v3, "_serverfolder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const-string v3, "_defaultfolder"

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    const-string v3, "_default_sync"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    add-int/lit8 v57, v57, 0x1

    .line 787
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 788
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 789
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 790
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    move/from16 v52, v57

    .line 794
    .restart local v52       #mailbox_operation_index:I
    add-int/lit8 v57, v57, 0x1

    .line 795
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 796
    const-string v5, "_id = ?"

    .line 797
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 798
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 799
    const-string v3, "_defaultfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 800
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 801
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 806
    const v3, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 808
    .local v18, IMAPStr:Ljava/lang/String;
    :try_start_0
    new-instance v19, Ljava/lang/String;

    const-string v3, "IMAP-mailbox-name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v18           #IMAPStr:Ljava/lang/String;
    .local v19, IMAPStr:Ljava/lang/String;
    move-object/from16 v18, v19

    .line 812
    .end local v19           #IMAPStr:Ljava/lang/String;
    .restart local v18       #IMAPStr:Ljava/lang/String;
    :goto_3
    const-string v3, "_undecodename"

    move-object/from16 v0, v69

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v3, "_decodename"

    const v4, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v3, "_shortname"

    const v4, 0x7f0b01d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v3, "_serverfolder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    const-string v3, "_movegroup"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 818
    const-string v3, "_showsender"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    add-int/lit8 v57, v57, 0x1

    .line 821
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 822
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 823
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 824
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    move/from16 v52, v57

    .line 828
    add-int/lit8 v57, v57, 0x1

    .line 829
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 830
    const-string v5, "_id = ?"

    .line 831
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 832
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 833
    const-string v3, "_trashfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 834
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 835
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 840
    const v3, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 842
    :try_start_1
    new-instance v19, Ljava/lang/String;

    const-string v3, "IMAP-mailbox-name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v18           #IMAPStr:Ljava/lang/String;
    .restart local v19       #IMAPStr:Ljava/lang/String;
    move-object/from16 v18, v19

    .line 846
    .end local v19           #IMAPStr:Ljava/lang/String;
    .restart local v18       #IMAPStr:Ljava/lang/String;
    :goto_4
    const-string v3, "_undecodename"

    move-object/from16 v0, v69

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v3, "_decodename"

    const v4, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v3, "_shortname"

    const v4, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v3, "_serverfolder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v3, "_movegroup"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v3, "_showsender"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    add-int/lit8 v57, v57, 0x1

    .line 855
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 856
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 857
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 858
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    move/from16 v52, v57

    .line 862
    add-int/lit8 v57, v57, 0x1

    .line 863
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 864
    const-string v5, "_id = ?"

    .line 865
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 866
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 867
    const-string v3, "_draftfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 868
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 869
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 873
    const v3, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 875
    :try_start_2
    new-instance v19, Ljava/lang/String;

    const-string v3, "IMAP-mailbox-name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v18           #IMAPStr:Ljava/lang/String;
    .restart local v19       #IMAPStr:Ljava/lang/String;
    move-object/from16 v18, v19

    .line 879
    .end local v19           #IMAPStr:Ljava/lang/String;
    .restart local v18       #IMAPStr:Ljava/lang/String;
    :goto_5
    const-string v3, "_undecodename"

    move-object/from16 v0, v69

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v3, "_decodename"

    const v4, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v3, "_shortname"

    const v4, 0x7f0b01d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v3, "_serverfolder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    const-string v3, "_movegroup"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 885
    const-string v3, "_showsender"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    add-int/lit8 v57, v57, 0x1

    .line 888
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 889
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 890
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 891
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    move/from16 v52, v57

    .line 895
    add-int/lit8 v57, v57, 0x1

    .line 896
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 897
    const-string v5, "_id = ?"

    .line 898
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 899
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 900
    const-string v3, "_outfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 901
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 902
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 907
    const v3, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 909
    :try_start_3
    new-instance v19, Ljava/lang/String;

    const-string v3, "IMAP-mailbox-name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v18           #IMAPStr:Ljava/lang/String;
    .restart local v19       #IMAPStr:Ljava/lang/String;
    move-object/from16 v18, v19

    .line 913
    .end local v19           #IMAPStr:Ljava/lang/String;
    .restart local v18       #IMAPStr:Ljava/lang/String;
    :goto_6
    const-string v3, "_undecodename"

    move-object/from16 v0, v69

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v3, "_decodename"

    const v4, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v3, "_shortname"

    const v4, 0x7f0b01d3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v3, "_serverfolder"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v3, "_defaultfolder"

    const v4, 0x7ffffffd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string v3, "_movegroup"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v3, "_showsender"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    add-int/lit8 v57, v57, 0x1

    .line 922
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 923
    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 924
    const-string v3, "_account"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 925
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    move/from16 v52, v57

    .line 929
    add-int/lit8 v57, v57, 0x1

    .line 930
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 931
    const-string v5, "_id = ?"

    .line 932
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 933
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 934
    const-string v3, "_sentfolderId"

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 935
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v24

    .line 936
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 943
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #account_args:[Ljava/lang/String;
    .end local v11           #settings_args:[Ljava/lang/String;
    .end local v18           #IMAPStr:Ljava/lang/String;
    .end local v20           #account_cursor:Landroid/database/Cursor;
    .end local v21           #account_operation_index:I
    .end local v23           #addr:Ljava/lang/String;
    .end local v24           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v26           #count:I
    .end local v27           #description:Ljava/lang/String;
    .end local v28           #domain:Ljava/lang/String;
    .end local v34           #id:J
    .end local v36           #inpassword:Ljava/lang/String;
    .end local v37           #inport:I
    .end local v38           #inprotocol:Ljava/lang/String;
    .end local v39           #inserver:Ljava/lang/String;
    .end local v40           #inusername:Ljava/lang/String;
    .end local v52           #mailbox_operation_index:I
    .end local v55           #name:Ljava/lang/String;
    .end local v59           #outpassword:Ljava/lang/String;
    .end local v60           #outport:I
    .end local v61           #outserver:Ljava/lang/String;
    .end local v62           #outusername:Ljava/lang/String;
    .end local v63           #plentyBundle:Landroid/os/Bundle;
    .end local v64           #provider:Ljava/lang/String;
    .end local v66           #smtpauth:I
    .end local v67           #useSSLin:I
    .end local v68           #useSSLout:I
    :cond_7
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 1008
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v22           #accounts:Landroid/os/Bundle;
    .end local v32           #i:I
    .end local v41           #key_description:Ljava/lang/String;
    .end local v42           #key_domain:Ljava/lang/String;
    .end local v43           #key_emailAddress:Ljava/lang/String;
    .end local v44           #key_inPassword:Ljava/lang/String;
    .end local v45           #key_inProtocol:Ljava/lang/String;
    .end local v46           #key_inUserName:Ljava/lang/String;
    .end local v47           #key_name:Ljava/lang/String;
    .end local v48           #key_now:Ljava/lang/String;
    .end local v49           #key_outPassword:Ljava/lang/String;
    .end local v50           #key_outUserName:Ljava/lang/String;
    .end local v51           #key_plenty:Ljava/lang/String;
    .end local v56           #newAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v57           #operation_index:I
    .end local v58           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v69           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_7
    return-void

    .line 946
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v22       #accounts:Landroid/os/Bundle;
    .restart local v32       #i:I
    .restart local v41       #key_description:Ljava/lang/String;
    .restart local v42       #key_domain:Ljava/lang/String;
    .restart local v43       #key_emailAddress:Ljava/lang/String;
    .restart local v44       #key_inPassword:Ljava/lang/String;
    .restart local v45       #key_inProtocol:Ljava/lang/String;
    .restart local v46       #key_inUserName:Ljava/lang/String;
    .restart local v47       #key_name:Ljava/lang/String;
    .restart local v48       #key_now:Ljava/lang/String;
    .restart local v49       #key_outPassword:Ljava/lang/String;
    .restart local v50       #key_outUserName:Ljava/lang/String;
    .restart local v51       #key_plenty:Ljava/lang/String;
    .restart local v56       #newAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v57       #operation_index:I
    .restart local v58       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v69       #values:Landroid/content/ContentValues;
    :cond_9
    :try_start_4
    const-string v3, "mail"

    move-object/from16 v0, v58

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 954
    :goto_8
    const-string v5, "_del <> 1"

    .line 955
    .restart local v5       #where:Ljava/lang/String;
    sget-object v13, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v14, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v2

    move-object v15, v5

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 956
    .restart local v25       #c:Landroid/database/Cursor;
    if-eqz v25, :cond_b

    .line 957
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 958
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 959
    .restart local v26       #count:I
    const-string v3, "account"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    .line 960
    .local v30, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "totalCount"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 961
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 963
    .end local v26           #count:I
    .end local v30           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 967
    :cond_b
    const-string v5, "_del <> 1 AND _defaultaccount = 1"

    .line 968
    sget-object v13, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v14, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v2

    move-object v15, v5

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 969
    if-eqz v25, :cond_d

    .line 970
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 971
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_c

    .line 972
    invoke-virtual/range {v69 .. v69}, Landroid/content/ContentValues;->clear()V

    .line 973
    const-string v3, "_defaultaccount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    const-string v5, "_id = (select min(_id) from accounts where _del <> 1)"

    .line 975
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v69

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 978
    :cond_c
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_d
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v65

    .line 983
    .local v65, size:I
    if-lez v65, :cond_10

    .line 985
    const-string v3, "setup_wizard_has_run"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    const/16 v31, 0x1

    .line 986
    .local v31, hasRun:Z
    :goto_9
    const-string v3, "HtcMailCustomization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setup_wizard_has_run: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-eqz v31, :cond_10

    .line 988
    const-string v3, "welcome_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v54

    .line 989
    .local v54, messages:Landroid/os/Bundle;
    if-eqz v54, :cond_10

    .line 990
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->initWelecomeMessageMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v53

    .line 991
    .local v53, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_e
    :goto_a
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 992
    .restart local v23       #addr:Ljava/lang/String;
    move-object/from16 v0, v53

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 993
    move-object/from16 v0, v53

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/HtcMailCustomization;->installMessageToDB(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_a

    .line 947
    .end local v5           #where:Ljava/lang/String;
    .end local v23           #addr:Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v31           #hasRun:Z
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v53           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v54           #messages:Landroid/os/Bundle;
    .end local v65           #size:I
    :catch_0
    move-exception v29

    .line 948
    .local v29, e:Landroid/os/RemoteException;
    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 949
    .end local v29           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v29

    .line 950
    .local v29, e:Landroid/content/OperationApplicationException;
    invoke-virtual/range {v29 .. v29}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_8

    .line 985
    .end local v29           #e:Landroid/content/OperationApplicationException;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v65       #size:I
    :cond_f
    const/16 v31, 0x0

    goto :goto_9

    .line 1001
    :cond_10
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/HtcMailCustomization$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/htc/android/mail/HtcMailCustomization$1;-><init>(Lcom/htc/android/mail/HtcMailCustomization;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 910
    .end local v65           #size:I
    .restart local v6       #account_args:[Ljava/lang/String;
    .restart local v11       #settings_args:[Ljava/lang/String;
    .restart local v18       #IMAPStr:Ljava/lang/String;
    .restart local v20       #account_cursor:Landroid/database/Cursor;
    .restart local v21       #account_operation_index:I
    .restart local v23       #addr:Ljava/lang/String;
    .restart local v24       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v26       #count:I
    .restart local v27       #description:Ljava/lang/String;
    .restart local v28       #domain:Ljava/lang/String;
    .restart local v34       #id:J
    .restart local v36       #inpassword:Ljava/lang/String;
    .restart local v37       #inport:I
    .restart local v38       #inprotocol:Ljava/lang/String;
    .restart local v39       #inserver:Ljava/lang/String;
    .restart local v40       #inusername:Ljava/lang/String;
    .restart local v52       #mailbox_operation_index:I
    .restart local v55       #name:Ljava/lang/String;
    .restart local v59       #outpassword:Ljava/lang/String;
    .restart local v60       #outport:I
    .restart local v61       #outserver:Ljava/lang/String;
    .restart local v62       #outusername:Ljava/lang/String;
    .restart local v63       #plentyBundle:Landroid/os/Bundle;
    .restart local v64       #provider:Ljava/lang/String;
    .restart local v66       #smtpauth:I
    .restart local v67       #useSSLin:I
    .restart local v68       #useSSLout:I
    :catch_2
    move-exception v3

    goto/16 :goto_6

    .line 876
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 843
    :catch_4
    move-exception v3

    goto/16 :goto_4

    .line 809
    :catch_5
    move-exception v3

    goto/16 :goto_3
.end method

.method public preInstallMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8
    .parameter "context"
    .parameter "mailProvider"

    .prologue
    .line 1336
    if-eqz p2, :cond_1

    .line 1337
    const-string v5, "welcome_message"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1338
    .local v3, message:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1339
    const-string v2, "plenty_set"

    .line 1340
    .local v2, key_plenty:Ljava/lang/String;
    const-string v1, ""

    .line 1342
    .local v1, key_now:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/mail/HtcMailCustomization;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcMailCustomization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert Mail message from customization count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1346
    .local v4, plentyBundle:Landroid/os/Bundle;
    invoke-direct {p0, p1, v4}, Lcom/htc/android/mail/HtcMailCustomization;->installMessageToDB(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    .end local v0           #i:I
    .end local v1           #key_now:Ljava/lang/String;
    .end local v2           #key_plenty:Ljava/lang/String;
    .end local v3           #message:Landroid/os/Bundle;
    .end local v4           #plentyBundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method
