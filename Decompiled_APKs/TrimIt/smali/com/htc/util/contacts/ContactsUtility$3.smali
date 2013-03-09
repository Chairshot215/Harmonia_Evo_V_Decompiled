.class final Lcom/htc/util/contacts/ContactsUtility$3;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lContactId:J

.field final synthetic val$rawId:J


# direct methods
.method constructor <init>(JLandroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1438
    iput-wide p1, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$rawId:J

    iput-object p3, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    iput-wide p4, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$lContactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1440
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->queryEditableAccount()Ljava/util/ArrayList;

    move-result-object v7

    .line 1442
    .local v7, editableAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    .local v8, sbSelection:Ljava/lang/StringBuilder;
    const-string v0, " ( "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    const-string v0, " ( "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    const-string v0, " = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    iget-wide v0, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$rawId:J

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1448
    const-string v0, " ) "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v0, "account_type"

    invoke-static {v0, v7}, Lcom/htc/util/contacts/ContactsUtility;->getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    const-string v0, " ) "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    iget-object v0, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1455
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1456
    const-string v0, "ContactsUtility"

    const-string v1, "importToMyContact null == c return;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :goto_0
    return-void

    .line 1459
    :cond_0
    if-eqz v6, :cond_2

    .line 1461
    :try_start_0
    const-string v0, "ContactsUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importToMyContact c.getCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1463
    const-string v0, "ContactsUtility"

    const-string v1, "importToMyContact 0 >= c.getCount() return;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1468
    const/4 v6, 0x0

    goto :goto_0

    .line 1467
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1468
    const/4 v6, 0x0

    .line 1473
    :cond_2
    iget-object v0, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/util/contacts/ContactsUtility$3;->val$lContactId:J

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;J)V

    goto :goto_0

    .line 1467
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1468
    const/4 v6, 0x0

    throw v0
.end method
