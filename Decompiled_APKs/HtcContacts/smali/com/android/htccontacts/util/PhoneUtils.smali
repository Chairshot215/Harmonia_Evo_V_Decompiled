.class public Lcom/android/htccontacts/util/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachExtra(Landroid/content/Intent;ZLcom/android/htccontacts/HtcContactInfo;)V
    .locals 3
    .parameter "intent"
    .parameter "isVT"
    .parameter "info"

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    const-string v0, "personId"

    iget-wide v1, p2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v0, "hasPhoto"

    invoke-virtual {p2}, Lcom/android/htccontacts/HtcContactInfo;->hasPhoto()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    const-string v0, "name"

    iget-object v1, p2, Lcom/android/htccontacts/HtcContactInfoBase;->fullName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :cond_0
    const-string v0, "isVTCall"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method public static callIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "number"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/PhoneUtils;->callIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static callIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter "number"
    .parameter "isVT"

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {p0}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const-string v1, "isVTCall"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    return-object v0
.end method

.method public static generateContactInfoWithNumber(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .locals 5
    .parameter "contactCursor"
    .parameter "phoneCursor"

    .prologue
    .line 128
    new-instance v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    invoke-direct {v0}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 130
    .local v0, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    const-string v3, "photo_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 132
    .local v1, photoId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 133
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 136
    :cond_0
    const-string v3, "display_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 139
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 142
    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 145
    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 148
    return-object v0
.end method

.method public static getPrimaryPhoneCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 4
    .parameter "contactId"
    .parameter "resolver"

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/util/PhoneUtils;->queryPhoneNumbers(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 85
    .local v1, phonesCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 87
    .local v2, primaryPhoneCursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    .line 106
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    return-object v2

    .line 89
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 90
    .local v0, count:I
    const/4 v3, 0x1

    if-ne v3, v0, :cond_3

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    move-object v2, v1

    goto :goto_0

    .line 94
    :cond_3
    if-eqz v0, :cond_0

    .line 95
    const/4 v3, -0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 96
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "is_super_primary"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    move-object v2, v1

    .line 100
    goto :goto_0
.end method

.method public static isEmergencyClickable(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "phoneNumber"
    .parameter "mEnterEmergencyMode"

    .prologue
    .line 194
    const/16 v0, 0x94

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xaf

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/htccontacts/util/MessageUtil;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static queryPhoneNumbers(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 9
    .parameter "contactId"
    .parameter "resolver"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 59
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 60
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "data1"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "is_super_primary"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "data2"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "data3"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "data7"

    aput-object v3, v2, v0

    const-string v3, "mimetype=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v8

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 65
    .local v7, phonesCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 66
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    .end local v7           #phonesCursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 69
    .restart local v7       #phonesCursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 72
    goto :goto_0
.end method
