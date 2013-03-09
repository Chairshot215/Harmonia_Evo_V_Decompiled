.class public Lcom/android/providers/contacts/HtcLegacyContactImporter;
.super Lcom/android/providers/contacts/LegacyContactImporter;
.source "HtcLegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;,
        Lcom/android/providers/contacts/HtcLegacyContactImporter$MyContactCard;,
        Lcom/android/providers/contacts/HtcLegacyContactImporter$EventInsert;,
        Lcom/android/providers/contacts/HtcLegacyContactImporter$EventMapQuery;,
        Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcGroupsInsert;,
        Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcGroupsQuery;,
        Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcContactsInsert;
    }
.end annotation


# static fields
.field public static final EXCHANGE_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final OUTLOOK_ACCOUNT_NAME:Ljava/lang/String; = "pcsc"

.field public static final OUTLOOK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.pcsc"


# instance fields
.field private mHtcContactProvider:Lcom/android/providers/contacts/HtcContactsProvider2;

.field mOverlayIcon:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 0
    .parameter "context"
    .parameter "contactsProvider"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/LegacyContactImporter;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V

    .line 72
    iput-object p2, p0, Lcom/android/providers/contacts/HtcLegacyContactImporter;->mHtcContactProvider:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 75
    return-void
.end method

.method private getHtcExchangeAccountName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 528
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 529
    .local v0, accountMgr:Landroid/accounts/AccountManager;
    const-string v3, "com.htc.android.mail.eas"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 530
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 531
    .local v1, accountName:Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 532
    aget-object v3, v2, v5

    if-eqz v3, :cond_0

    .line 533
    aget-object v3, v2, v5

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 536
    :cond_0
    return-object v1
.end method

.method private isUselessPredefinedGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .parameter "systemId"

    .prologue
    const/4 v0, 0x0

    .line 353
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    const-string v1, "System Group: PC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "System Group: Exchange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parseStringIntoTwoDate(Ljava/lang/String;Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;)V
    .locals 3
    .parameter "string"
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 1096
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1116
    :cond_0
    return-void

    .line 1100
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, token:Ljava/lang/String;
    const-string v2, "YEAR:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1104
    const-string v2, "YEAR:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->year:I

    goto :goto_0

    .line 1105
    :cond_3
    const-string v2, "MONTH:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1106
    const-string v2, "MONTH:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->month:I

    goto :goto_0

    .line 1107
    :cond_4
    const-string v2, "DAY:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1108
    const-string v2, "DAY:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->day:I

    goto :goto_0

    .line 1109
    :cond_5
    const-string v2, "YEAR2:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1110
    const-string v2, "YEAR2:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->year:I

    goto :goto_0

    .line 1111
    :cond_6
    const-string v2, "MONTH2:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1112
    const-string v2, "MONTH2:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->month:I

    goto/16 :goto_0

    .line 1113
    :cond_7
    const-string v2, "DAY2:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1114
    const-string v2, "DAY2:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->day:I

    goto/16 :goto_0
.end method

.method private turnMiliSeconodToFormat3339(J)Ljava/lang/String;
    .locals 8
    .parameter "milliseconds"

    .prologue
    .line 1027
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 1028
    .local v4, timezone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1029
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1031
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1032
    .local v5, year:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1033
    .local v2, month:I
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1035
    .local v1, day:I
    new-instance v3, Landroid/text/format/Time;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v1, v2, v5}, Landroid/text/format/Time;->set(III)V

    .line 1037
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    iput-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    .line 1038
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private turnTimeToFormat3339(III)Ljava/lang/String;
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1043
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1044
    .local v1, timezone:Ljava/util/TimeZone;
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p3, p2, p1}, Landroid/text/format/Time;->set(III)V

    .line 1046
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    .line 1047
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected addPredefinedData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 913
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 915
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-super {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->addPredefinedData()V

    .line 920
    invoke-static {v1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createMyContactIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 925
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 926
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "account_name"

    const-string v3, "pcsc"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v2, "account_type"

    const-string v3, "com.htc.android.pcsc"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v2, "ungrouped_visible"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 929
    const-string v2, "should_sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 930
    const-string v2, "settings"

    const-string v3, "account_name"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 934
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 935
    const-string v2, "account_name"

    const-string v3, "HTC"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v2, "account_type"

    const-string v3, "DeviceOnly"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v2, "sourceid"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v2, "system_id"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    const-string v2, "sortorder"

    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string v2, "title"

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v2, "system_id"

    const-string v3, "Favorites"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v2, "display_title"

    const-string v3, "Favorites"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v2, "groups"

    const-string v3, "sourceid"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 953
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 954
    const-string v2, "account_name"

    const-string v3, "HTC"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v2, "account_type"

    const-string v3, "DeviceOnly"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v2, "sourceid"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v2, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v2, "sortorder"

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 960
    const-string v2, "title"

    const-string v3, "VIP"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v2, "system_id"

    const-string v3, "VIP"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v2, "display_title"

    const-string v3, "VIP"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v2, "groups"

    const-string v3, "sourceid"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 966
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 967
    const-string v2, "account_name"

    const-string v3, "HTC"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v2, "account_type"

    const-string v3, "DeviceOnly"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v2, "sourceid"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v2, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    const-string v2, "sortorder"

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    const-string v2, "title"

    const-string v3, "Family"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "system_id"

    const-string v3, "Family"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v2, "display_title"

    const-string v3, "Family"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "groups"

    const-string v3, "sourceid"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 979
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 980
    const-string v2, "account_name"

    const-string v3, "HTC"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v2, "account_type"

    const-string v3, "DeviceOnly"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v2, "sourceid"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v2, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    const-string v2, "sortorder"

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    const-string v2, "title"

    const-string v3, "Friends"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v2, "system_id"

    const-string v3, "Friends"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v2, "display_title"

    const-string v3, "Friends"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v2, "groups"

    const-string v3, "sourceid"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 992
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 993
    const-string v2, "account_name"

    const-string v3, "HTC"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v2, "account_type"

    const-string v3, "DeviceOnly"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "sourceid"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    const-string v2, "sortorder"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    const-string v2, "title"

    const-string v3, "Coworkers"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v2, "system_id"

    const-string v3, "Coworkers"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v2, "display_title"

    const-string v3, "Coworkers"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v2, "groups"

    const-string v3, "sourceid"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1009
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->importMyContactCard()V

    .line 1010
    return-void
.end method

.method protected getAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "accountType"
    .parameter "originalName"

    .prologue
    .line 885
    move-object v0, p2

    .line 886
    .local v0, name:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    const-string v0, "pcsc"

    .line 889
    :cond_0
    return-object v0
.end method

.method protected getAccountType(I)Ljava/lang/String;
    .locals 1
    .parameter "ext_account"

    .prologue
    .line 866
    const-string v0, "pcsc"

    .line 867
    .local v0, account:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 877
    const-string v0, "com.htc.android.pcsc"

    .line 880
    :goto_0
    return-object v0

    .line 869
    :pswitch_0
    const-string v0, "com.google"

    .line 870
    goto :goto_0

    .line 873
    :pswitch_1
    const-string v0, "com.htc.android.mail.eas"

    .line 874
    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMyContactRawContactId()J
    .locals 6

    .prologue
    .line 1155
    invoke-static {}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->getMyContactCardRawId()J

    move-result-wide v2

    .line 1156
    .local v2, rawContactId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 1157
    const-string v1, "SELECT _id FROM raw_contacts WHERE account_name=\'HTC\' AND account_type=\'DeviceOnly\'"

    .line 1163
    .local v1, myContactQuery:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1164
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1166
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1167
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1170
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1174
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #myContactQuery:Ljava/lang/String;
    :cond_1
    return-wide v2

    .line 1170
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #myContactQuery:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method protected importEvent()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1014
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data2) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1015
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events_map"

    sget-object v2, Lcom/android/providers/contacts/HtcLegacyContactImporter$EventMapQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1018
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertEvent(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1024
    return-void
.end method

.method protected importGroups()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO groups(_id,title,notes,system_id,dirty,group_visible,account_name,account_type,sourceid ,  display_title  , photo) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 341
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    sget-object v2, Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcGroupsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 344
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertGroup(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 350
    return-void
.end method

.method protected importMyContactCard()V
    .locals 73

    .prologue
    .line 548
    const/16 v22, 0x0

    .line 549
    .local v22, MY_CONTACT_CARD_COLUMN_ID:I
    const/16 v24, 0x1

    .line 550
    .local v24, MY_CONTACT_CARD_COLUMN_TYPE:I
    const/16 v23, 0x2

    .line 551
    .local v23, MY_CONTACT_CARD_COLUMN_SUBTYPE:I
    const/16 v20, 0x3

    .line 552
    .local v20, MY_CONTACT_CARD_COLUMN_DATA:I
    const/16 v21, 0x4

    .line 553
    .local v21, MY_CONTACT_CARD_COLUMN_DATA2:I
    const/16 v19, 0x5

    .line 555
    .local v19, MY_CONTACT_CARD_COLUMN_BLOBDATA:I
    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "subtype"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "data"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "data2"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "blobdata"

    aput-object v5, v6, v4

    .line 564
    .local v6, colimn:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->getMyContactRawContactId()J

    move-result-wide v14

    .line 566
    .local v14, myContactRawContactId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data4,data2,data5,data3,data6,data10,data9,data8,data7,data11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v66

    .line 569
    .local v66, structuredNameInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data4,) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v55

    .line 570
    .local v55, phoneInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO phone_lookup(raw_contact_id,data_id,normalized_number,min_match) VALUES (?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v56

    .line 573
    .local v56, phoneLookupInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE contacts SET has_phone_number=1 WHERE _id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v37

    .line 576
    .local v37, hasPhoneUpdate:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v34

    .line 577
    .local v34, emailInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v41

    .line 578
    .local v41, imInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v61

    .line 579
    .local v61, postalInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data4,data2,data3) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v52

    .line 581
    .local v52, organizationInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,data15,data_sync1) VALUES (?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v59

    .line 583
    .local v59, photoInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE contacts SET photo_id=? WHERE _id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v58

    .line 584
    .local v58, photoIdUpdate:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v48

    .line 586
    .local v48, noteInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data2) VALUES (?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v36

    .line 587
    .local v36, eventInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "myContactCard"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 588
    .local v27, cursor:Landroid/database/Cursor;
    if-eqz v27, :cond_6

    .line 592
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 594
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    .line 595
    .local v71, type:I
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 596
    .local v67, subtype:I
    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 597
    .local v28, data:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 599
    .local v29, data2:Ljava/lang/String;
    packed-switch v71, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 601
    :pswitch_1
    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 602
    .local v25, blobdata:[B
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    array-length v4, v0

    if-lez v4, :cond_0

    .line 605
    const/4 v4, 0x1

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 606
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhotoMimetypeId:J

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 607
    const/4 v4, 0x3

    move-object/from16 v0, v59

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 609
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v63

    .line 610
    .local v63, rowId:J
    const/4 v4, 0x1

    move-object/from16 v0, v58

    move-wide/from16 v1, v63

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 611
    const/4 v4, 0x2

    move-object/from16 v0, v58

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 612
    invoke-virtual/range {v58 .. v58}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 613
    const-wide/16 v4, 0x0

    cmp-long v4, v63, v4

    if-lez v4, :cond_0

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter;->mOverlayIcon:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    move-wide/from16 v0, v63

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updatePeopleThumbnail(J[B[BLandroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 857
    .end local v25           #blobdata:[B
    .end local v28           #data:Ljava/lang/String;
    .end local v29           #data2:Ljava/lang/String;
    .end local v63           #rowId:J
    .end local v67           #subtype:I
    .end local v71           #type:I
    :catchall_0
    move-exception v4

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 858
    const/16 v27, 0x0

    throw v4

    .line 622
    .restart local v28       #data:Ljava/lang/String;
    .restart local v29       #data2:Ljava/lang/String;
    .restart local v67       #subtype:I
    .restart local v71       #type:I
    :pswitch_2
    move-object/from16 v12, v29

    .line 624
    .local v12, name:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 625
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mStructuredNameMimetypeId:J

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 626
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 628
    new-instance v65, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v65 .. v65}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 629
    .local v65, splitName:Lcom/android/providers/contacts/NameSplitter$Name;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, v65

    invoke-virtual {v4, v0, v12}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 631
    const/4 v4, 0x4

    invoke-virtual/range {v65 .. v65}, Lcom/android/providers/contacts/NameSplitter$Name;->getPrefix()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 632
    const/4 v4, 0x5

    invoke-virtual/range {v65 .. v65}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 633
    const/4 v4, 0x6

    invoke-virtual/range {v65 .. v65}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 634
    const/4 v4, 0x7

    invoke-virtual/range {v65 .. v65}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 635
    const/16 v4, 0x8

    invoke-virtual/range {v65 .. v65}, Lcom/android/providers/contacts/NameSplitter$Name;->getSuffix()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v10

    .line 640
    .local v10, dataId:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    const/4 v13, 0x0

    move-wide v8, v14

    invoke-virtual/range {v7 .. v13}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 644
    .end local v10           #dataId:J
    .end local v12           #name:Ljava/lang/String;
    .end local v65           #splitName:Lcom/android/providers/contacts/NameSplitter$Name;
    :pswitch_3
    move-object/from16 v43, v28

    .line 645
    .local v43, label:Ljava/lang/String;
    move-object/from16 v50, v29

    .line 646
    .local v50, number:Ljava/lang/String;
    move/from16 v57, v67

    .line 647
    .local v57, phoneType:I
    const-wide/16 v44, -0x1

    .line 648
    .local v44, lastUpdatedContact:J
    const/16 v47, 0x0

    .line 649
    .local v47, normalizedNumber:Ljava/lang/String;
    if-eqz v50, :cond_1

    .line 650
    invoke-static/range {v50 .. v50}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 652
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 653
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneMimetypeId:J

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 654
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 655
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 656
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v57

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 657
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 658
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v10

    .line 661
    .restart local v10       #dataId:J
    if-eqz v47, :cond_0

    .line 662
    const/4 v4, 0x1

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 663
    const/4 v4, 0x2

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 664
    const/4 v4, 0x3

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 667
    cmp-long v4, v44, v14

    if-eqz v4, :cond_0

    .line 668
    move-wide/from16 v44, v14

    .line 669
    const/4 v4, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 670
    invoke-virtual/range {v37 .. v37}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 682
    .end local v10           #dataId:J
    .end local v43           #label:Ljava/lang/String;
    .end local v44           #lastUpdatedContact:J
    .end local v47           #normalizedNumber:Ljava/lang/String;
    .end local v50           #number:Ljava/lang/String;
    .end local v57           #phoneType:I
    :pswitch_4
    move-object/from16 v43, v28

    .line 683
    .restart local v43       #label:Ljava/lang/String;
    move-object/from16 v18, v29

    .line 684
    .local v18, email:Ljava/lang/String;
    move/from16 v35, v67

    .line 686
    .local v35, emailType:I
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 687
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mEmailMimetypeId:J

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 688
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 689
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 690
    const/16 v4, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 691
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v35

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 692
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v10

    .line 695
    .restart local v10       #dataId:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v16, v10

    invoke-virtual/range {v13 .. v18}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 700
    .end local v10           #dataId:J
    .end local v18           #email:Ljava/lang/String;
    .end local v35           #emailType:I
    .end local v43           #label:Ljava/lang/String;
    :pswitch_5
    new-instance v30, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;-><init>(Lcom/android/providers/contacts/HtcLegacyContactImporter;)V

    .line 701
    .local v30, date1:Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;
    new-instance v31, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;-><init>(Lcom/android/providers/contacts/HtcLegacyContactImporter;)V

    .line 702
    .local v31, date2:Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;
    invoke-static/range {v29 .. v31}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->parseStringIntoTwoDate(Ljava/lang/String;Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;)V

    .line 703
    const/16 v72, 0x0

    .line 704
    .local v72, year:I
    const/16 v46, 0x0

    .line 705
    .local v46, month:I
    const/16 v33, 0x0

    .line 706
    .local v33, day:I
    move-wide/from16 v53, v14

    .line 708
    .local v53, personId:J
    if-eqz v30, :cond_2

    .line 709
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->year:I

    move/from16 v72, v0

    .line 710
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->month:I

    move/from16 v46, v0

    .line 711
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->day:I

    move/from16 v33, v0

    .line 712
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v46

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->turnTimeToFormat3339(III)Ljava/lang/String;

    move-result-object v32

    .line 713
    .local v32, dateString:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-wide/from16 v1, v53

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 714
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mEventMimetypeId:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 715
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 716
    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x3

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 721
    .end local v32           #dateString:Ljava/lang/String;
    :cond_2
    if-eqz v31, :cond_0

    .line 722
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->year:I

    move/from16 v72, v0

    .line 723
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->month:I

    move/from16 v46, v0

    .line 724
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;->day:I

    move/from16 v33, v0

    .line 725
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v46

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->turnTimeToFormat3339(III)Ljava/lang/String;

    move-result-object v32

    .line 726
    .restart local v32       #dateString:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-wide/from16 v1, v53

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 727
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mEventMimetypeId:J

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 728
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 729
    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto/16 :goto_0

    .line 736
    .end local v30           #date1:Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;
    .end local v31           #date2:Lcom/android/providers/contacts/HtcLegacyContactImporter$DateObj;
    .end local v32           #dateString:Ljava/lang/String;
    .end local v33           #day:I
    .end local v46           #month:I
    .end local v53           #personId:J
    .end local v72           #year:I
    :pswitch_6
    move-object/from16 v43, v28

    .line 737
    .restart local v43       #label:Ljava/lang/String;
    move-object/from16 v60, v29

    .line 738
    .local v60, postal:Ljava/lang/String;
    move/from16 v62, v67

    .line 740
    .local v62, postalType:I
    move-wide/from16 v53, v14

    .line 742
    .restart local v53       #personId:J
    const/4 v4, 0x1

    move-object/from16 v0, v61

    move-wide/from16 v1, v53

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 743
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPostalMimetypeId:J

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 744
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 745
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 746
    const/16 v4, 0x8

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 747
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v62

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 748
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto/16 :goto_0

    .line 755
    .end local v43           #label:Ljava/lang/String;
    .end local v53           #personId:J
    .end local v60           #postal:Ljava/lang/String;
    .end local v62           #postalType:I
    :pswitch_7
    move-object/from16 v43, v28

    .line 756
    .restart local v43       #label:Ljava/lang/String;
    move-object/from16 v40, v29

    .line 757
    .local v40, im:Ljava/lang/String;
    move/from16 v42, v67

    .line 759
    .local v42, imType:I
    move-wide/from16 v53, v14

    .line 761
    .restart local v53       #personId:J
    const/4 v4, 0x1

    move-object/from16 v0, v41

    move-wide/from16 v1, v53

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 762
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mImMimetypeId:J

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 763
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 764
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 765
    const/16 v4, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 766
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v42

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 767
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto/16 :goto_0

    .line 776
    .end local v40           #im:Ljava/lang/String;
    .end local v42           #imType:I
    .end local v43           #label:Ljava/lang/String;
    .end local v53           #personId:J
    :pswitch_8
    move-wide/from16 v38, v14

    .line 777
    .local v38, id:J
    move-object/from16 v43, v28

    .line 779
    .restart local v43       #label:Ljava/lang/String;
    move/from16 v26, v67

    .line 781
    .local v26, companyType:I
    const/16 v51, 0x0

    .line 782
    .local v51, organization:Ljava/lang/String;
    const/16 v68, 0x0

    .line 783
    .local v68, title:Ljava/lang/String;
    new-instance v70, Ljava/util/StringTokenizer;

    const-string v4, ";"

    move-object/from16 v0, v70

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .local v70, tokenizer:Ljava/util/StringTokenizer;
    :cond_3
    :goto_1
    invoke-virtual/range {v70 .. v70}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 785
    invoke-virtual/range {v70 .. v70}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v69

    .line 786
    .local v69, token:Ljava/lang/String;
    const-string v4, "ORG:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 787
    const-string v4, "ORG:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    goto :goto_1

    .line 788
    :cond_4
    const-string v4, "TITLE:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 789
    const-string v4, "TITLE:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v68

    goto :goto_1

    .line 793
    .end local v69           #token:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-wide/from16 v1, v38

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 794
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mOrganizationMimetypeId:J

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 795
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 796
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 797
    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 798
    const/4 v4, 0x7

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 799
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto/16 :goto_0

    .line 808
    .end local v26           #companyType:I
    .end local v38           #id:J
    .end local v43           #label:Ljava/lang/String;
    .end local v51           #organization:Ljava/lang/String;
    .end local v68           #title:Ljava/lang/String;
    .end local v70           #tokenizer:Ljava/util/StringTokenizer;
    :pswitch_9
    move-object/from16 v49, v29

    .line 810
    .local v49, notes:Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 857
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 858
    const/16 v27, 0x0

    .line 862
    .end local v28           #data:Ljava/lang/String;
    .end local v29           #data2:Ljava/lang/String;
    .end local v49           #notes:Ljava/lang/String;
    .end local v67           #subtype:I
    .end local v71           #type:I
    :cond_6
    :goto_2
    return-void

    .line 814
    .restart local v28       #data:Ljava/lang/String;
    .restart local v29       #data2:Ljava/lang/String;
    .restart local v49       #notes:Ljava/lang/String;
    .restart local v67       #subtype:I
    .restart local v71       #type:I
    :cond_7
    move-wide/from16 v38, v14

    .line 815
    .restart local v38       #id:J
    const/4 v4, 0x1

    :try_start_2
    move-object/from16 v0, v48

    move-wide/from16 v1, v38

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 816
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNoteMimetypeId:J

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 817
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 818
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 857
    .end local v28           #data:Ljava/lang/String;
    .end local v29           #data2:Ljava/lang/String;
    .end local v38           #id:J
    .end local v49           #notes:Ljava/lang/String;
    .end local v67           #subtype:I
    .end local v71           #type:I
    :cond_8
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 858
    const/16 v27, 0x0

    .line 859
    goto :goto_2

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected importOtherData()V
    .locals 0

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->importEvent()V

    .line 542
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->importPCSCTrackingTable()V

    .line 543
    return-void
.end method

.method protected importPCSCTrackingTable()V
    .locals 17

    .prologue
    .line 1121
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_add"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "_modify"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "_delete"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "_syncing"

    aput-object v2, v3, v1

    .line 1129
    .local v3, projection:[Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1130
    .local v16, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pcscTracking"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1131
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1133
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1135
    .local v10, id:J
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1136
    .local v12, isAdd:I
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1137
    .local v14, isModify:I
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1138
    .local v13, isDelete:I
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1139
    .local v15, isSync:I
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 1140
    const-string v1, "_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1141
    const-string v1, "_add"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1142
    const-string v1, "_modify"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    const-string v1, "_delete"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    const-string v1, "_syncing"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pcscTracking"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1148
    .end local v10           #id:J
    .end local v12           #isAdd:I
    .end local v13           #isDelete:I
    .end local v14           #isModify:I
    .end local v15           #isSync:I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1151
    :cond_1
    return-void
.end method

.method protected importPeople()V
    .locals 20

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO raw_contacts(_id,contact_id,custom_ringtone,dirty,last_time_contacted,send_to_voicemail,starred,times_contacted,sync1,sync2,account_name,account_type,sourceid,display_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v18

    .line 407
    .local v18, rawContactInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO contacts(_id,custom_ringtone,last_time_contacted,send_to_voicemail,starred,times_contacted,display_name,ext_account_Type) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 408
    .local v12, contactInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data4,data2,data5,data3,data6,data10,data9,data8,data7,data11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 410
    .local v19, structuredNameInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 414
    .local v15, noteInsert:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter;->mHtcContactProvider:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v10, v2, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 417
    .local v10, aggregator:Lcom/android/providers/contacts/ContactAggregator;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITH_PHONETIC_NAME:[Ljava/lang/String;

    .line 420
    .local v4, columns:[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "people"

    const-string v5, "name IS NULL AND extra_group = 2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 422
    .local v11, c:Landroid/database/Cursor;
    const-string v2, "extra_group"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 424
    .local v14, index:I
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 427
    .local v16, rawContactId:J
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 428
    .local v13, extra_group:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 430
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, v16

    invoke-virtual {v10, v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 437
    .end local v13           #extra_group:I
    .end local v16           #rawContactId:J
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 417
    .end local v4           #columns:[Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v14           #index:I
    :cond_0
    sget-object v4, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    goto :goto_0

    .line 437
    .restart local v4       #columns:[Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #index:I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 440
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v2, :cond_2

    sget-object v4, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_PHONETIC_NAME:[Ljava/lang/String;

    .line 443
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "people"

    const-string v5, "name IS NOT NULL AND extra_group = 2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 444
    const-string v2, "extra_group"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 446
    :goto_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 447
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 448
    .restart local v16       #rawContactId:J
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 449
    .restart local v13       #extra_group:I
    const-string v2, "HtcLegacyContactImporter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra_group?  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   name? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    .line 451
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertStructuredName(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, v16

    invoke-virtual {v10, v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 460
    .end local v13           #extra_group:I
    .end local v16           #rawContactId:J
    :catchall_1
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 440
    :cond_2
    sget-object v4, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    goto :goto_2

    .line 460
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 462
    return-void
.end method

.method protected insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 467
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 468
    .local v3, id:J
    invoke-virtual {p2, v8, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 469
    const/4 v5, 0x2

    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v6}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 471
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p2, v7, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 473
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p2, v9, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 475
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p2, v10, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 477
    const/4 v5, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 479
    const/4 v5, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v6}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 481
    const-string v5, "extra_group"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 482
    .local v2, extra_group_index:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 483
    .local v1, extra_group:I
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->getAccountType(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, accountType:Ljava/lang/String;
    const/16 v5, 0x8

    invoke-virtual {p0, p2, v5, v0}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 486
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 487
    return-void
.end method

.method protected insertEvent(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 17
    .parameter "c"
    .parameter "insert"

    .prologue
    .line 1051
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1054
    .local v13, type:J
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1055
    .local v11, time:J
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1056
    .local v10, source:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1058
    .local v4, personId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->turnMiliSeconodToFormat3339(J)Ljava/lang/String;

    move-result-object v8

    .line 1060
    .local v8, dateString:Ljava/lang/String;
    const/4 v9, 0x2

    .line 1061
    .local v9, eclairType:I
    const-wide/16 v2, 0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_1

    .line 1062
    const/4 v9, 0x3

    .line 1074
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcLegacyContactImporter;->mHtcContactProvider:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v1

    .line 1075
    .local v1, rowHelper:Lcom/android/providers/contacts/DataRowHandler;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1077
    .local v6, values:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1078
    const-string v2, "data1"

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v2, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string v2, "mimetype_id"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mEventMimetypeId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Lcom/android/providers/contacts/TransactionContext;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/android/providers/contacts/TransactionContext;-><init>(Z)V

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    .line 1083
    return-void

    .line 1063
    .end local v1           #rowHelper:Lcom/android/providers/contacts/DataRowHandler;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    .line 1064
    const/4 v9, 0x1

    goto :goto_0
.end method

.method protected insertGroup(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter "c"
    .parameter "insert"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    .line 370
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 372
    .local v1, id:J
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, systemId:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->isUselessPredefinedGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 400
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p2, v8, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 381
    invoke-virtual {p0, p2, v6, v3}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 382
    const/4 v5, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v6}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 383
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v7, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 384
    const/4 v5, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 385
    const/4 v5, 0x6

    const-wide/16 v6, 0x1

    invoke-virtual {p2, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 386
    const-string v5, "pcsc"

    invoke-virtual {p0, p2, v9, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 387
    const-string v5, "com.htc.android.pcsc"

    invoke-virtual {p0, p2, v10, v5}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 388
    const/16 v5, 0xa

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v6}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 389
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 390
    .local v0, bytes:[B
    if-eqz v0, :cond_1

    array-length v5, v0

    if-lez v5, :cond_1

    .line 391
    const/16 v5, 0xb

    invoke-virtual {p2, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 392
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v0}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils$GroupThumbnail;->updateGroupThumbnailFileWithResize(Landroid/content/Context;Ljava/lang/String;[B)Z

    .line 399
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0

    .line 395
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {p2, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method protected insertPhoto(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .parameter "c"
    .parameter "insert"
    .parameter "photoIdUpdate"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 492
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 498
    .local v2, personId:J
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 502
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 504
    .local v1, data:[B
    invoke-virtual {p2, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 505
    iget-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhotoMimetypeId:J

    invoke-virtual {p2, v9, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 506
    invoke-virtual {p2, v10, v1}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 509
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 511
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 516
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/HtcLegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v4

    .line 517
    .local v4, rowId:J
    invoke-virtual {p3, v8, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 518
    invoke-virtual {p3, v9, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 519
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 522
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 523
    iget-object v6, p0, Lcom/android/providers/contacts/HtcLegacyContactImporter;->mOverlayIcon:[B

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/providers/contacts/HtcUtils/ThumbnailUtils;->updatePeopleThumbnail(J[B[BLandroid/content/Context;)Z

    goto :goto_0

    .line 513
    .end local v4           #rowId:J
    :cond_2
    invoke-virtual {p2, v11}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method protected wipeUserData()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 895
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM speed_dial;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 896
    const-string v1, "DELETE FROM contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 897
    const-string v1, "DELETE FROM raw_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 898
    const-string v1, "DELETE FROM data;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 899
    const-string v1, "DELETE FROM phone_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 900
    const-string v1, "DELETE FROM name_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 901
    const-string v1, "DELETE FROM groups;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 902
    const-string v1, "DELETE FROM agg_exceptions;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 904
    const-string v1, "DELETE FROM activities;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 905
    const-string v1, "DELETE FROM calls;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 909
    return-void
.end method
