.class public Lcom/htc/util/contacts/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# static fields
.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"

.field private static final TAG:Ljava/lang/String; = "BlacklistUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContactToBlacklist(Landroid/content/Context;JZLjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "person_id"
    .parameter "isSim"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 120
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 121
    if-eqz p3, :cond_0

    .line 123
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$1;-><init>(JLandroid/content/Context;)V

    .line 130
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 169
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return v2

    .line 134
    :cond_0
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$2;-><init>(JLandroid/content/Context;)V

    .line 141
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 147
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_1
    invoke-static {p4}, Lcom/htc/util/contacts/BlacklistUtils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, black_number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$3;

    invoke-direct {v1, v0, p0}, Lcom/htc/util/contacts/BlacklistUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 169
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static couldAddToBlockCaller(II)Z
    .locals 1
    .parameter "vip"
    .parameter "sendToVoicemail"

    .prologue
    .line 96
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static couldAddToBlockCaller(IIZ)Z
    .locals 2
    .parameter "vip"
    .parameter "sendToVoicemail"
    .parameter "isSIMSDN"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-boolean v1, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v1, :cond_0

    .line 112
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    const/4 v4, 0x0

    .line 189
    :goto_0
    return-object v4

    .line 179
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 180
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 183
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    .local v1, character:C
    const-string v4, " ()-./"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v1           #character:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "send_to_voicemail"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 49
    .local v1, contact_id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "send_to_voicemail"

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    sget-object v4, Landroid/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 58
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 60
    if-eqz p2, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 53
    .end local v0           #blockSimUri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 63
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifyVIP(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "vip"

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "vip"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static modifyVIPForSim(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "context"
    .parameter "contact_uri"
    .parameter "vip"

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 76
    .local v0, contact_id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 93
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "vip"

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    sget-object v4, Landroid/provider/HtcContactsContract$VIP_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, vipSimUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 87
    if-eqz p2, :cond_2

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 80
    .end local v3           #vipSimUri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 90
    .restart local v3       #vipSimUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
