.class public Lcom/htc/sdm/util/SDMUtil;
.super Ljava/lang/Object;
.source "SDMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/util/SDMUtil$SoundXmlInfo;,
        Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_LANG:Ljava/lang/String; = "en"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMUtil] "

.field private static final SOUNDSET_STATUS_NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final TYPE_CATEGORY_ALARM:I = 0x2

.field private static final TYPE_CATEGORY_NOTIFY:I = 0x3

.field private static final TYPE_CATEGORY_RINGTONE:I = 0x4

.field private static final TYPE_CATEGORY_SOUND_SET:I = 0x1

.field private static m_mp:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/sdm/util/SDMUtil;->m_mp:Landroid/media/MediaPlayer;

    .line 59
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "SDMStatus"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/util/SDMUtil;->SOUNDSET_STATUS_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    return-void
.end method

.method public static CreateDataStorageFullDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "baseContext"

    .prologue
    .line 1663
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1664
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/htc/sdm/activity/SDMStorageFullDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1665
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1666
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1667
    return-void
.end method

.method public static CreateUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 451
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static GetCustFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "ct"

    .prologue
    .line 1728
    const-string v1, "/system/customize/resource/ringtone.xml"

    .line 1729
    .local v1, DEFAULT_RINGTONE_FILE:Ljava/lang/String;
    const-string v3, "/system/customize/resource/ringtone_"

    .line 1730
    .local v3, RINGTONE_FILE_PATH_NAME:Ljava/lang/String;
    const-string v2, ".xml"

    .line 1731
    .local v2, RINGTONE_FILE_EXT:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1732
    .local v0, CustFilePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1733
    .local v5, isCustFileExist:Z
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1736
    .local v9, tm:Landroid/telephony/TelephonyManager;
    :try_start_0
    const-string v8, ""

    .line 1737
    .local v8, strOperator:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1738
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 1743
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/customize/resource/ringtone_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1746
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v4, custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1750
    const/4 v5, 0x1

    .line 1774
    .end local v4           #custFile:Ljava/io/File;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 1776
    const-string v0, "/system/customize/resource/ringtone.xml"

    .line 1777
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1780
    .restart local v4       #custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1781
    const/4 v5, 0x1

    .line 1792
    .end local v4           #custFile:Ljava/io/File;
    .end local v8           #strOperator:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v10, 0x1

    if-ne v10, v5, :cond_5

    .line 1798
    .end local v0           #CustFilePath:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 1753
    .restart local v0       #CustFilePath:Ljava/lang/String;
    .restart local v4       #custFile:Ljava/io/File;
    .restart local v8       #strOperator:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1754
    .local v6, mcc:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1757
    .local v7, mnc:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/customize/resource/ringtone_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1758
    new-instance v4, Ljava/io/File;

    .end local v4           #custFile:Ljava/io/File;
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1761
    .restart local v4       #custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1762
    const/4 v5, 0x1

    goto :goto_0

    .line 1765
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/customize/resource/ringtone_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1766
    new-instance v4, Ljava/io/File;

    .end local v4           #custFile:Ljava/io/File;
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1769
    .restart local v4       #custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 1770
    const/4 v5, 0x1

    goto :goto_0

    .line 1798
    .end local v4           #custFile:Ljava/io/File;
    .end local v6           #mcc:Ljava/lang/String;
    .end local v7           #mnc:I
    .end local v8           #strOperator:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1787
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public static GetSoundUri(Landroid/content/Context;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "soundSet"

    .prologue
    .line 1805
    const/4 v0, 0x0

    .line 1806
    .local v0, MediaUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1812
    .local v1, SoundUri:Ljava/lang/String;
    :try_start_0
    iget-object v4, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1813
    const/16 v3, 0x78

    .line 1814
    .local v3, retryCounter:I
    :goto_0
    if-nez v0, :cond_1

    if-lez v3, :cond_1

    .line 1821
    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1822
    iget-object v4, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1828
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v2

    .line 1826
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1837
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #retryCounter:I
    :catch_1
    move-exception v4

    .line 1842
    :cond_0
    :goto_2
    return-object v1

    .line 1830
    .restart local v3       #retryCounter:I
    :cond_1
    if-eqz v0, :cond_0

    .line 1832
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2
.end method

.method public static IsCWReady(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1673
    const-string v2, "SoundSetPref"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1674
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1678
    const-string v2, "IsCWReady"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1680
    :cond_0
    return v1
.end method

.method public static IsCustomizedReady(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1624
    const-string v2, "SoundSetPref"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1625
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1629
    const-string v2, "IsCustomizedReady"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1631
    :cond_0
    return v1
.end method

.method public static IsDBMigReady(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1704
    const-string v2, "SoundSetPref"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1705
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1709
    const-string v2, "IsDBMigReady"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1711
    :cond_0
    return v1
.end method

.method public static IsDefaultSound(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "sounduri"

    .prologue
    .line 1545
    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->RefType2RMType(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1546
    .local v0, CursoundUri:Landroid/net/Uri;
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1548
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1550
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static RefID2RMType(I)I
    .locals 1
    .parameter "refID"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, ret:I
    packed-switch p0, :pswitch_data_0

    .line 226
    :goto_0
    return v0

    .line 211
    :pswitch_0
    const/4 v0, 0x1

    .line 212
    goto :goto_0

    .line 220
    :pswitch_1
    const/4 v0, 0x2

    .line 221
    goto :goto_0

    .line 223
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static RefID2TitleID(I)I
    .locals 1
    .parameter "refID"

    .prologue
    .line 236
    const v0, 0x7f09000a

    .line 238
    .local v0, nTitleId:I
    packed-switch p0, :pswitch_data_0

    .line 259
    :goto_0
    return v0

    .line 241
    :pswitch_0
    const v0, 0x7f09000a

    .line 242
    goto :goto_0

    .line 244
    :pswitch_1
    const v0, 0x7f090001

    .line 245
    goto :goto_0

    .line 253
    :pswitch_2
    const v0, 0x7f090014

    .line 254
    goto :goto_0

    .line 256
    :pswitch_3
    const v0, 0x7f090023

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static RefID2Type(I)Ljava/lang/String;
    .locals 1
    .parameter "refID"

    .prologue
    .line 165
    const-string v0, ""

    .line 166
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 196
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "S_Ringtone"

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "S_Notify"

    .line 173
    goto :goto_0

    .line 175
    :pswitch_2
    const-string v0, "S_Alarm"

    .line 176
    goto :goto_0

    .line 178
    :pswitch_3
    const-string v0, "Calendar"

    .line 179
    goto :goto_0

    .line 181
    :pswitch_4
    const-string v0, "Message"

    .line 182
    goto :goto_0

    .line 184
    :pswitch_5
    const-string v0, "EMail"

    .line 185
    goto :goto_0

    .line 187
    :pswitch_6
    const-string v0, "FS1"

    .line 188
    goto :goto_0

    .line 190
    :pswitch_7
    const-string v0, "FS2"

    .line 191
    goto :goto_0

    .line 193
    :pswitch_8
    const-string v0, "Task"

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static RefType2ID(Ljava/lang/String;)I
    .locals 1
    .parameter "refType"

    .prologue
    .line 95
    const-string v0, "S_Ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x2

    .line 137
    :goto_0
    return v0

    .line 99
    :cond_0
    const-string v0, "S_Notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x3

    goto :goto_0

    .line 103
    :cond_1
    const-string v0, "S_Alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x4

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "Calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x5

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "Message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const/4 v0, 0x6

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "EMail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    const/4 v0, 0x7

    goto :goto_0

    .line 119
    :cond_5
    const-string v0, "FS1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    const/16 v0, 0x8

    goto :goto_0

    .line 123
    :cond_6
    const-string v0, "FS2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    const/16 v0, 0x9

    goto :goto_0

    .line 127
    :cond_7
    const-string v0, "Task"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    const/16 v0, 0xa

    goto :goto_0

    .line 131
    :cond_8
    const-string v0, "Soundset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static RefType2RMType(Ljava/lang/String;)I
    .locals 2
    .parameter "refType"

    .prologue
    .line 144
    const-string v1, "S_Ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 160
    .local v0, ret:I
    :goto_0
    return v0

    .line 148
    .end local v0           #ret:I
    :cond_0
    const-string v1, "S_Notify"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/4 v0, 0x2

    .restart local v0       #ret:I
    goto :goto_0

    .line 152
    .end local v0           #ret:I
    :cond_1
    const-string v1, "S_Alarm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const/4 v0, 0x4

    .restart local v0       #ret:I
    goto :goto_0

    .line 158
    .end local v0           #ret:I
    :cond_2
    const/4 v0, 0x2

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public static ResetCustomizedReady(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1651
    const-string v1, "SoundSetPref"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1652
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1654
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IsCustomizedReady"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1658
    :cond_0
    return-void
.end method

.method public static SaveDefaultSetting(Landroid/content/Context;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V
    .locals 7
    .parameter "ct"
    .parameter "xmlInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1851
    .local p2, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    :try_start_0
    const-string v4, "SoundSetPref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1852
    .local v2, pref:Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 1854
    .local v3, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1856
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefRingtone"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1887
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local v3           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catch_0
    move-exception v4

    .line 1893
    :cond_1
    return-void

    .line 1858
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    .restart local v3       #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_2
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 1860
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefAlarm"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1862
    :cond_3
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1864
    iget-object v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 1865
    .local v0, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    if-eqz v0, :cond_0

    .line 1867
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Calendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1869
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefCalendar"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1871
    :cond_4
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1873
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefMsg"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1875
    :cond_5
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "EMail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1877
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefEmail"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1881
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefNotification"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static SendDeleteIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "guid"
    .parameter "type"
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 1471
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v0, guidlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    const-string v2, "online_item_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1475
    const-string v2, "online_item_content_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    const-string v2, "download_status"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1477
    const-string v2, "requester"

    const-string v3, "com.htc.store_sdm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string v2, "download_message"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1480
    return-void
.end method

.method public static SendDeleteIntentToHub(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "type"
    .parameter "status"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, guidlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "online_item_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1486
    const-string v1, "online_item_content_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const-string v1, "download_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1488
    const-string v1, "requester"

    const-string v2, "com.htc.store_sdm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1489
    const-string v1, "download_message"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1491
    return-void
.end method

.method public static SendLocaleChangeIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "guid"
    .parameter "type"

    .prologue
    .line 1495
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.GET_ONLINE_ITEMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v0, guidlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    const-string v2, "online_item_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1499
    const-string v2, "online_item_content_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    const-string v2, "requester"

    const-string v3, "com.htc.store_sdm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1502
    return-void
.end method

.method public static SendLocaleChangeIntentToHub(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1506
    .local p1, guidlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.store.action.GET_ONLINE_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "online_item_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1508
    const-string v1, "online_item_content_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    const-string v1, "requester"

    const-string v2, "com.htc.store_sdm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1511
    return-void
.end method

.method public static SetCWReady(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1686
    const-string v1, "SoundSetPref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1687
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1689
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IsCWReady"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1693
    :cond_0
    return-void
.end method

.method public static SetCustomizedReady(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1638
    const-string v1, "SoundSetPref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1639
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1641
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IsCustomizedReady"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1645
    :cond_0
    return-void
.end method

.method public static SetDBMigReady(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1717
    const-string v1, "SoundSetPref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1718
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1720
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IsDBMigReady"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1724
    :cond_0
    return-void
.end method

.method public static deleteFileAndRemoveFromMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 10
    .parameter "cr"
    .parameter "localFileUri"

    .prologue
    .line 1398
    const/4 v6, 0x0

    .line 1402
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1415
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1420
    .local v9, strData:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v7, del_file:Ljava/io/File;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1450
    .end local v7           #del_file:Ljava/io/File;
    .end local v9           #strData:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1452
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1463
    :cond_1
    if-eqz v6, :cond_2

    .line 1465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1468
    :cond_2
    :goto_1
    return-void

    .line 1440
    :catch_0
    move-exception v8

    .line 1446
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1456
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 1459
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1463
    if-eqz v6, :cond_2

    .line 1465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1463
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "PackageName"

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 85
    sget-object v0, Lcom/htc/sdm/util/SDMUtil;->SOUNDSET_STATUS_NOTIFICATION_URI:Landroid/net/Uri;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sdm/util/SDMUtil;->SOUNDSET_STATUS_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCategoryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "Category"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, CatId:I
    if-nez p1, :cond_0

    .line 408
    const v1, 0x7f09002d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    :goto_0
    return-object v1

    .line 411
    :cond_0
    const-string v1, "101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 412
    const v0, 0x7f09002e

    .line 440
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 413
    :cond_1
    const-string v1, "102"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 414
    const v0, 0x7f09002f

    goto :goto_1

    .line 415
    :cond_2
    const-string v1, "103"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 416
    const v0, 0x7f090030

    goto :goto_1

    .line 417
    :cond_3
    const-string v1, "104"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 418
    const v0, 0x7f090031

    goto :goto_1

    .line 419
    :cond_4
    const-string v1, "105"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 420
    const v0, 0x7f090032

    goto :goto_1

    .line 421
    :cond_5
    const-string v1, "106"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 422
    const v0, 0x7f090033

    goto :goto_1

    .line 423
    :cond_6
    const-string v1, "107"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 424
    const v0, 0x7f090034

    goto :goto_1

    .line 425
    :cond_7
    const-string v1, "108"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 426
    const v0, 0x7f090035

    goto :goto_1

    .line 427
    :cond_8
    const-string v1, "109"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 428
    const v0, 0x7f090036

    goto :goto_1

    .line 429
    :cond_9
    const-string v1, "110"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 430
    const v0, 0x7f090037

    goto :goto_1

    .line 431
    :cond_a
    const-string v1, "111"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 432
    const v0, 0x7f090038

    goto :goto_1

    .line 433
    :cond_b
    const-string v1, "112"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 434
    const v0, 0x7f090039

    goto/16 :goto_1

    .line 435
    :cond_c
    const-string v1, "113"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 436
    const v0, 0x7f09003a

    goto/16 :goto_1

    .line 438
    :cond_d
    const v0, 0x7f09002d

    goto/16 :goto_1
.end method

.method public static getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 369
    const-string v2, "SoundSetPref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 371
    .local v1, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 372
    const-string v2, "SoundSetGUID"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_0
    return-object v1
.end method

.method public static getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 313
    .local v0, systemLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateTimeStringFromMillisecond(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "millisecond"

    .prologue
    .line 1696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, dateFormat:Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFilenameFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "URL"

    .prologue
    .line 285
    const-string v1, ""

    .line 286
    .local v1, ret:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x2

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 292
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .end local v0           #i:I
    :cond_0
    return-object v1

    .line 288
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/sdm/util/SDMUtil;->m_mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/htc/sdm/util/SDMUtil;->m_mp:Landroid/media/MediaPlayer;

    .line 71
    :cond_0
    sget-object v0, Lcom/htc/sdm/util/SDMUtil;->m_mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static getSortMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 264
    const/4 v1, 0x2

    .line 265
    .local v1, ret:I
    const-string v2, "SoundSetPref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, pre:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 269
    const-string v2, "ItemSort"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 272
    :cond_0
    return v1
.end method

.method public static getSystemLang(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 320
    .local v3, systemLocale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, systemLanguage:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, systemCountry:Ljava/lang/String;
    move-object v0, v2

    .line 324
    .local v0, lang:Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 326
    const-string v4, "CN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    const-string v0, "zhsc"

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    const-string v4, "TW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    const-string v0, "zhtc"

    goto :goto_0

    .line 334
    :cond_2
    const-string v4, "HK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    const-string v0, "zhtc"

    goto :goto_0

    .line 338
    :cond_3
    const-string v4, "SG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    const-string v0, "zhsc"

    goto :goto_0

    .line 345
    :cond_4
    const-string v0, "en"

    goto :goto_0

    .line 348
    :cond_5
    const-string v4, "pt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const-string v4, "BR"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 352
    const-string v0, "ptbr"

    goto :goto_0

    .line 354
    :cond_6
    const-string v4, "PT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 356
    const-string v0, "ptpt"

    goto :goto_0

    .line 360
    :cond_7
    const-string v0, "ptbr"

    goto :goto_0
.end method

.method public static getTrackSize(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 13
    .parameter "context"
    .parameter "soundUri"

    .prologue
    const/4 v12, 0x1

    .line 1555
    const/4 v10, -0x1

    .line 1556
    .local v10, sizeInKBytes:I
    const-string v7, ""

    .line 1557
    .local v7, displayname:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1558
    .local v6, c:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v11, v10

    .line 1597
    .end local v10           #sizeInKBytes:I
    .local v11, sizeInKBytes:I
    :goto_0
    return v11

    .line 1564
    .end local v11           #sizeInKBytes:I
    .restart local v10       #sizeInKBytes:I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1566
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v12, :cond_2

    .line 1568
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1569
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1570
    .local v9, i:I
    if-ltz v9, :cond_2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 1571
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v10, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    .end local v9           #i:I
    :cond_2
    if-eqz v6, :cond_3

    .line 1593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1594
    const/4 v6, 0x0

    :cond_3
    :goto_1
    move v11, v10

    .line 1597
    .end local v10           #sizeInKBytes:I
    .restart local v11       #sizeInKBytes:I
    goto :goto_0

    .line 1585
    .end local v11           #sizeInKBytes:I
    .restart local v10       #sizeInKBytes:I
    :catch_0
    move-exception v8

    .line 1588
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    if-eqz v6, :cond_3

    .line 1593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1594
    const/4 v6, 0x0

    goto :goto_1

    .line 1592
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1594
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public static gotoDetailPage(Landroid/content/Context;ILjava/util/ArrayList;I)V
    .locals 10
    .parameter "context"
    .parameter "nListType"
    .parameter
    .parameter "nCurSel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    const v9, 0x7f090044

    const v8, 0x7f090043

    const v7, 0x7f090042

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "Soudset_Type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    packed-switch p1, :pswitch_data_0

    .line 490
    :goto_0
    if-eqz p2, :cond_0

    .line 492
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundSetParcelable;

    .line 494
    .local v2, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v2, :cond_0

    .line 496
    const-string v3, "DetailParcel"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 498
    const-string v3, "DetailDescription"

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v3, "DetailCreator"

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v3, "DetailCreateDate"

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "DetailCategory"

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/sdm/util/SDMUtil;->getCategoryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v3, "DetailSize"

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v3, "SoundSetName"

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v2           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 517
    return-void

    .line 467
    :pswitch_0
    const-string v3, "DetailLabel"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :pswitch_1
    const-string v3, "DetailLabel"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :pswitch_2
    const-string v3, "DetailLabel"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    :pswitch_3
    const-string v3, "DetailLabel"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static hasActiveNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 304
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 305
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 306
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCallable(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 3
    .parameter "intent"
    .parameter "ctx"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeMediaStoreAudioFlag(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 5
    .parameter "context"
    .parameter "targetFileUri"
    .parameter "m_nSoundType"

    .prologue
    const/4 v4, 0x0

    .line 1364
    if-eqz p1, :cond_0

    .line 1367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1368
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 1370
    .local v0, audioCol:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1371
    const-string v0, "is_ringtone"

    .line 1384
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1386
    .local v2, infoValues:Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1387
    invoke-virtual {v1, p1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1389
    .end local v0           #audioCol:Ljava/lang/String;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #infoValues:Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1372
    .restart local v0       #audioCol:Ljava/lang/String;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    const/4 v3, 0x7

    if-eq p2, v3, :cond_2

    const/4 v3, 0x6

    if-eq p2, v3, :cond_2

    const/16 v3, 0x8

    if-eq p2, v3, :cond_2

    const/16 v3, 0x9

    if-eq p2, v3, :cond_2

    const/16 v3, 0xa

    if-ne p2, v3, :cond_3

    .line 1379
    :cond_2
    const-string v0, "is_notification"

    goto :goto_0

    .line 1380
    :cond_3
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 1381
    const-string v0, "is_alarm"

    goto :goto_0
.end method

.method public static setCurSoundsetGUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "strGUID"

    .prologue
    .line 381
    const-string v1, "SoundSetPref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, PrefSoundSet:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SoundSetGUID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    :cond_0
    return-void
.end method

.method public static setSortMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "sortMode"

    .prologue
    .line 277
    const-string v1, "SoundSetPref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    .local v0, pre:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ItemSort"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 446
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    return-void
.end method

.method public static typeIdToString(I)Ljava/lang/String;
    .locals 1
    .parameter "nId"

    .prologue
    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, type:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1540
    :goto_0
    return-object v0

    .line 1520
    :pswitch_0
    const-string v0, "Ringtone"

    .line 1521
    goto :goto_0

    .line 1529
    :pswitch_1
    const-string v0, "Notification"

    .line 1530
    goto :goto_0

    .line 1532
    :pswitch_2
    const-string v0, "Alarm"

    .line 1533
    goto :goto_0

    .line 1535
    :pswitch_3
    const-string v0, "Soundset"

    .line 1536
    goto :goto_0

    .line 1517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
