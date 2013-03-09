.class public Lcom/htc/provider/IccContract;
.super Ljava/lang/Object;
.source "IccContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/IccContract$IccPhonebook;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 10
    .parameter "contactId"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, deleteUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-gtz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v7

    .line 60
    :cond_1
    sget-object v0, Lcom/htc/provider/ContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, queryRecordNumUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 69
    .local v8, recordNumber:J
    invoke-static {v8, v9}, Lcom/htc/provider/IccContract;->getDeleteSIMUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 71
    .end local v8           #recordNumber:J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDeleteSIMUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "recordNum"

    .prologue
    .line 49
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
