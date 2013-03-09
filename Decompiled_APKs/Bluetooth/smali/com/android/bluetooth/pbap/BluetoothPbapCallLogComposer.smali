.class public Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
.super Ljava/lang/Object;
.source "BluetoothPbapCallLogComposer.java"


# static fields
.field private static final CALLER_NAME_COLUMN_INDEX:I = 0x3

.field private static final CALLER_NUMBERLABEL_COLUMN_INDEX:I = 0x5

.field private static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x4

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x2

.field private static final DATE_COLUMN_INDEX:I = 0x1

.field private static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field private static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field private static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final NUMBER_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallLogComposer"

.field private static final VCARD_PROPERTY_CALLTYPE_INCOMING:Ljava/lang/String; = "RECEIVED"

.field private static final VCARD_PROPERTY_CALLTYPE_MISSED:Ljava/lang/String; = "MISSED"

.field private static final VCARD_PROPERTY_CALLTYPE_OUTGOING:Ljava/lang/String; = "DIALED"

.field private static final VCARD_PROPERTY_X_TIMESTAMP:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field private static final sCallLogProjection:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private mTerminateIsCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    return-void
.end method

.method private createOneCallLogEntryInternal(Z)Ljava/lang/String;
    .locals 10
    .parameter "vcardVer21"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 137
    if-eqz p1, :cond_6

    const/high16 v7, -0x4000

    :goto_0
    const/high16 v9, 0x200

    or-int v6, v7, v9

    .line 140
    .local v6, vcardType:I
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 141
    .local v0, builder:Lcom/android/vcard/VCardBuilder;
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const-string v2, ""

    .line 145
    :cond_0
    const-string v7, "-1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "-2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "-3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 148
    :cond_1
    const-string v2, ""

    .line 150
    :cond_2
    new-array v7, v3, [Ljava/lang/String;

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 151
    .local v3, needCharset:Z
    :goto_1
    const-string v7, "FN"

    invoke-virtual {v0, v7, v2, v3, v8}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 152
    const-string v7, "N"

    invoke-virtual {v0, v7, v2, v3, v8}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 154
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, number:Ljava/lang/String;
    const-string v7, "-1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "-2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "-3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 158
    :cond_3
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    const v9, 0x7f040004

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 161
    .local v5, type:I
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v4, v8}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->tryAppendCallHistoryTimeStampField(Lcom/android/vcard/VCardBuilder;)V

    .line 168
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 137
    .end local v0           #builder:Lcom/android/vcard/VCardBuilder;
    .end local v1           #label:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #needCharset:Z
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #vcardType:I
    :cond_6
    const v7, -0x3fffffff

    goto/16 :goto_0

    .restart local v0       #builder:Lcom/android/vcard/VCardBuilder;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v6       #vcardType:I
    :cond_7
    move v3, v8

    .line 150
    goto :goto_1
.end method

.method private final toRfc2455Format(J)Ljava/lang/String;
    .locals 2
    .parameter "millSecs"

    .prologue
    .line 201
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 202
    .local v0, startDate:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 203
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tryAppendCallHistoryTimeStampField(Lcom/android/vcard/VCardBuilder;)V
    .locals 7
    .parameter "builder"

    .prologue
    const/4 v6, 0x1

    .line 219
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 221
    .local v0, callLogType:I
    packed-switch v0, :pswitch_data_0

    .line 235
    const-string v4, "CallLogComposer"

    const-string v5, "Call log type not correct."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 223
    :pswitch_0
    const-string v1, "RECEIVED"

    .line 240
    .local v1, callLogTypeStr:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 241
    .local v2, dateAsLong:J
    const-string v4, "X-IRMC-CALL-DATETIME"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->toRfc2455Format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    .end local v2           #dateAsLong:J
    :pswitch_1
    const-string v1, "DIALED"

    .line 228
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 231
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    :pswitch_2
    const-string v1, "MISSED"

    .line 232
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "phoneNumber"
    .parameter "vcardVer21"

    .prologue
    const/4 v6, 0x0

    .line 176
    if-eqz p4, :cond_2

    const/high16 v4, -0x4000

    :goto_0
    const/high16 v5, 0x200

    or-int v3, v4, v5

    .line 180
    .local v3, vcardType:I
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 181
    .local v0, builder:Lcom/android/vcard/VCardBuilder;
    const/4 v2, 0x0

    .line 182
    .local v2, needCharset:Z
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 185
    :cond_0
    const-string v4, "FN"

    invoke-virtual {v0, v4, p2, v2, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 186
    const-string v4, "N"

    invoke-virtual {v0, v4, p2, v2, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1, p3, v6}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    .end local v1           #label:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 176
    .end local v0           #builder:Lcom/android/vcard/VCardBuilder;
    .end local v2           #needCharset:Z
    .end local v3           #vcardType:I
    :cond_2
    const v4, -0x3fffffff

    goto :goto_0
.end method

.method public createOneEntry(Z)Ljava/lang/String;
    .locals 2
    .parameter "vcardVer21"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "The vCard composer object is not correctly initialized"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneCallLogEntryInternal(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    throw v0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 263
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 94
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    .line 101
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 105
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    move v0, v7

    .line 121
    .end local v2           #projection:[Ljava/lang/String;
    :goto_0
    return v0

    .line 97
    :cond_0
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    move v0, v7

    .line 98
    goto :goto_0

    .line 109
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 116
    :goto_1
    iput-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    move v0, v7

    .line 118
    goto :goto_0

    .line 112
    :catch_0
    move-exception v6

    .line 113
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CallLogComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_1

    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 116
    iput-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 115
    throw v0

    .line 121
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 255
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    .line 256
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CallLogComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
