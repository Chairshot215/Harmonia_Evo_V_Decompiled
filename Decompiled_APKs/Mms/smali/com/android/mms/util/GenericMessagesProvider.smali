.class public Lcom/android/mms/util/GenericMessagesProvider;
.super Landroid/content/ContentProvider;
.source "GenericMessagesProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "htc-messages"

#the value of this static final field might be set in the static constructor
.field private static final DefaultMaxMmsMessagesPerThread:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DefaultMaxSmsMessagesPerThread:I = 0x0

.field private static final LOCAL_LOGV:Z = true

.field private static final MaxMmsMessagesPerThread:Ljava/lang/String; = null

.field private static final MaxSmsMessagesPerThread:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GenericMessagesProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MSG_CAPABILITY:I = 0x1

.field private static final URI_MSG_SETTINGS:I = 0x0

.field private static final URI_NEW_MSG_COUNT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/util/GenericMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 46
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MaxSmsMessagesPerThread"

    sput-object v0, Lcom/android/mms/util/GenericMessagesProvider;->MaxSmsMessagesPerThread:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MaxMmsMessagesPerThread"

    sput-object v0, Lcom/android/mms/util/GenericMessagesProvider;->MaxMmsMessagesPerThread:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/util/GenericMessagesProvider;->DefaultMaxSmsMessagesPerThread:I

    .line 49
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x14

    sput v0, Lcom/android/mms/util/GenericMessagesProvider;->DefaultMaxMmsMessagesPerThread:I

    .line 52
    sget-object v0, Lcom/android/mms/util/GenericMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "htc-messages"

    const-string v2, "message-settings/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/android/mms/util/GenericMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "htc-messages"

    const-string v2, "message-capability/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/android/mms/util/GenericMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "htc-messages"

    const-string v2, "new-message-count"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/mms/util/GenericMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 74
    .local v3, mContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 75
    .local v2, key:Ljava/lang/String;
    const-string v7, "GenericMessagesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v7, Lcom/android/mms/util/GenericMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 172
    const-string v7, "GenericMessagesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v7, 0x0

    .line 175
    :goto_0
    return-object v7

    .line 78
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #key:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 79
    .restart local v2       #key:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 80
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 82
    .local v4, prefs:Landroid/content/SharedPreferences;
    sget-object v7, Lcom/android/mms/util/GenericMessagesProvider;->MaxSmsMessagesPerThread:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    sget v7, Lcom/android/mms/util/GenericMessagesProvider;->DefaultMaxSmsMessagesPerThread:I

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 84
    .local v5, value:I
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 85
    .local v0, colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 87
    .local v6, values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 88
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #value:I
    :goto_1
    move-object v7, v1

    .line 175
    goto :goto_0

    .line 90
    .end local v0           #colName:[Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v7, Lcom/android/mms/util/GenericMessagesProvider;->MaxMmsMessagesPerThread:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    sget v7, Lcom/android/mms/util/GenericMessagesProvider;->DefaultMaxMmsMessagesPerThread:I

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 92
    .restart local v5       #value:I
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 93
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 95
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 96
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    .end local v0           #colName:[Ljava/lang/String;
    .end local v5           #value:I
    .end local v6           #values:[Ljava/lang/String;
    :cond_1
    const-string v7, "pref_key_auto_delete"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 99
    const/4 v7, 0x0

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 100
    .local v5, value:Z
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 101
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 103
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 104
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    .end local v0           #colName:[Ljava/lang/String;
    .end local v5           #value:Z
    .end local v6           #values:[Ljava/lang/String;
    :cond_2
    const-string v7, "pref_key_mms_max_size"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    const-string v7, "3"

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, value:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 109
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 111
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 112
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 114
    .end local v0           #colName:[Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_3
    const-string v7, "pref_key_mms_displaymode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 115
    const-string v7, "Expand"

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .restart local v5       #value:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 117
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 119
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 123
    .end local v0           #colName:[Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_4
    const-string v7, "GenericMessagesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 127
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    const-string v7, "GenericMessagesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 132
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #key:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 133
    .restart local v2       #key:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 134
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 135
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    const-string v7, "SMS_Max_Recipient_Number"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 136
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 137
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 138
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 139
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 141
    .end local v0           #colName:[Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_6
    const-string v7, "MMS_Max_Recipient_Number"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 142
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 143
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxMMSRecipientNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 144
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 147
    .end local v0           #colName:[Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_7
    const-string v7, "pref_key_mms_max_size"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 148
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 149
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "pref_key_mms_max_size"

    const-string v9, "3"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 150
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 151
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 154
    .end local v0           #colName:[Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_8
    const-string v7, "GenericMessagesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 159
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_9
    const-string v7, "GenericMessagesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 165
    :pswitch_2
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v0, v7

    .line 166
    .restart local v0       #colName:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 167
    .restart local v6       #values:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #cursor:Landroid/database/MatrixCursor;
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 168
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 193
    const-string v5, "GenericMessagesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/util/GenericMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 195
    .local v2, mContext:Landroid/content/Context;
    sget-object v5, Lcom/android/mms/util/GenericMessagesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 230
    const-string v3, "GenericMessagesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized URI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 197
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 199
    sget-object v4, Lcom/android/mms/util/GenericMessagesProvider;->MaxSmsMessagesPerThread:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 205
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_1
    sget-object v4, Lcom/android/mms/util/GenericMessagesProvider;->MaxMmsMessagesPerThread:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .restart local v0       #editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 211
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v4, "pref_key_auto_delete"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .restart local v0       #editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 217
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v4, "pref_key_mms_max_size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    .restart local v0       #editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 225
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v3, "GenericMessagesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized URI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 226
    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
