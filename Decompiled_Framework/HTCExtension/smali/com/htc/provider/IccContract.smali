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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    sget-object v0, Lcom/htc/provider/ContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/htc/provider/IccContract;->getDeleteSIMUri(J)Landroid/net/Uri;

    move-result-object v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDeleteSIMUri(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
