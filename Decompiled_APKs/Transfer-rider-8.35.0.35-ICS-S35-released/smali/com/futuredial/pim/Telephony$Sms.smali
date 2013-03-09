.class public final Lcom/futuredial/pim/Telephony$Sms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lcom/futuredial/pim/BaseColumns;
.implements Lcom/futuredial/pim/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/Telephony$Sms$Intents;,
        Lcom/futuredial/pim/Telephony$Sms$Conversations;,
        Lcom/futuredial/pim/Telephony$Sms$Outbox;,
        Lcom/futuredial/pim/Telephony$Sms$Draft;,
        Lcom/futuredial/pim/Telephony$Sms$Sent;,
        Lcom/futuredial/pim/Telephony$Sms$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field private static sms_status_locked:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 570
    const/4 v0, 0x0

    sput v0, Lcom/futuredial/pim/Telephony$Sms;->sms_status_locked:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    return-void
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 10
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"

    .prologue
    .line 193
    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/futuredial/pim/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 214
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 217
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 219
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://sms/inbox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const-string v2, "person"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-eqz p5, :cond_1

    .line 227
    const-string v2, "date"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    :cond_1
    const-string v3, "read"

    if-eqz p6, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v2, "subject"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p7, :cond_2

    .line 233
    const-string v2, "status"

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p8, v2

    if-eqz v2, :cond_3

    .line 236
    const-string v2, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    :cond_3
    sget v2, Lcom/futuredial/pim/Telephony$Sms;->sms_status_locked:I

    if-ne v2, v4, :cond_4

    .line 239
    const-string v2, "locked"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    sput v5, Lcom/futuredial/pim/Telephony$Sms;->sms_status_locked:I

    .line 242
    :cond_4
    invoke-static {p0, p1, v1}, Lcom/futuredial/pim/SqliteWrapper;->insert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 224
    .end local v0           #str:Ljava/lang/String;
    :cond_5
    move-object v0, p2

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 229
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1
.end method

.method public static isOutgoingFolder(I)Z
    .locals 1
    .parameter "messageType"

    .prologue
    .line 296
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "where"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return v4

    .line 259
    :cond_0
    const/4 v1, 0x0

    .line 260
    .local v1, markAsUnread:Z
    const/4 v0, 0x0

    .line 261
    .local v0, markAsRead:Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 277
    :goto_1
    :pswitch_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 279
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    if-eqz v1, :cond_2

    .line 281
    const-string v5, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    :cond_1
    :goto_2
    const-string v5, "status"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p1, v2, p3, v6}, Lcom/futuredial/pim/SqliteWrapper;->update(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    .line 267
    .end local v2           #values:Landroid/content/ContentValues;
    :pswitch_1
    const/4 v0, 0x1

    .line 268
    goto :goto_1

    .line 271
    :pswitch_2
    const/4 v1, 0x1

    .line 272
    goto :goto_1

    .line 282
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v0, :cond_1

    .line 283
    const-string v5, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    move v3, v4

    .line 287
    goto :goto_3

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 157
    sget-object v1, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 162
    sget-object v1, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "date DESC"

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method

.method public static setSmsLocked(I)V
    .locals 0
    .parameter "nlocked"

    .prologue
    .line 572
    sput p0, Lcom/futuredial/pim/Telephony$Sms;->sms_status_locked:I

    .line 573
    return-void
.end method
