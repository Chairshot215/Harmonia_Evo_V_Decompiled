.class Lcom/android/htcdialer/Dialer$14;
.super Ljava/lang/Thread;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$callId:J

.field final synthetic val$contactId:J

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3297
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$14;->this$0:Lcom/android/htcdialer/Dialer;

    iput-wide p3, p0, Lcom/android/htcdialer/Dialer$14;->val$contactId:J

    iput-object p5, p0, Lcom/android/htcdialer/Dialer$14;->val$number:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/htcdialer/Dialer$14;->val$callId:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 3300
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 3302
    iget-wide v0, p0, Lcom/android/htcdialer/Dialer$14;->val$contactId:J

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-nez v0, :cond_1

    .line 3303
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$14;->val$number:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3305
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v0, "PHONE_NUMBERS_EQUAL(number,\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3306
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$14;->val$number:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    const-string v0, "\')"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3308
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$14;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3349
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 3312
    :cond_1
    new-array v2, v14, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    .line 3313
    .local v2, field_raw_contact:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v11, p0, Lcom/android/htcdialer/Dialer$14;->val$contactId:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3314
    .local v3, where_raw_contact:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$14;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3315
    .local v6, cur_raw_contact:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3316
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3317
    const/4 v7, 0x1

    .line 3318
    .local v7, first_flag:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3319
    .restart local v9       #selection:Ljava/lang/StringBuilder;
    const-string v0, "raw_contact_id IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3321
    :cond_2
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 3322
    .local v8, raw_contactId:Ljava/lang/Long;
    if-ne v7, v14, :cond_4

    .line 3323
    const/4 v7, 0x0

    .line 3324
    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3331
    const-string v0, " )"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3332
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$14;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3334
    .end local v7           #first_flag:Z
    .end local v8           #raw_contactId:Ljava/lang/Long;
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3327
    .restart local v7       #first_flag:Z
    .restart local v8       #raw_contactId:Ljava/lang/Long;
    .restart local v9       #selection:Ljava/lang/StringBuilder;
    :cond_4
    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3328
    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3339
    .end local v2           #field_raw_contact:[Ljava/lang/String;
    .end local v3           #where_raw_contact:Ljava/lang/String;
    .end local v6           #cur_raw_contact:Landroid/database/Cursor;
    .end local v7           #first_flag:Z
    .end local v8           #raw_contactId:Ljava/lang/Long;
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :cond_5
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p0, Lcom/android/htcdialer/Dialer$14;->val$callId:J

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 3345
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$14;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method
