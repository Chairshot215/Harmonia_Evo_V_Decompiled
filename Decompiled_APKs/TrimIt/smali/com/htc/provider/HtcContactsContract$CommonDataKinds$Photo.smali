.class public final Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Photo;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation


# static fields
.field public static final LARGE:Ljava/lang/String; = "data8"

.field public static final PHOTO_URL:Ljava/lang/String; = "data9"

.field public static final SOCIALNETWORK:Ljava/lang/String; = "data7"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContactPhoto(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2079
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2082
    .local v6, contactUri:Landroid/net/Uri;
    const-string v0, "photo"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2085
    .local v1, photoUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data15"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2088
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 2094
    :cond_0
    if-eqz v7, :cond_1

    .line 2095
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v3

    .line 2091
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2092
    .local v8, data:[B
    if-nez v8, :cond_3

    .line 2094
    :goto_1
    if-eqz v7, :cond_1

    .line 2095
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2092
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    array-length v2, v8

    invoke-static {v8, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 2094
    .end local v8           #data:[B
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2095
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
