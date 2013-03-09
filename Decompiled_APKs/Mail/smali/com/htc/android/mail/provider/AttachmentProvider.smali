.class public Lcom/htc/android/mail/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/provider/AttachmentProvider$DeletableAttachmentsColumns;,
        Lcom/htc/android/mail/provider/AttachmentProvider$AttachmentProviderColumns;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DELETABLE_ATTACHMENTS:I = 0x4

.field private static final DELETE_ATTACHMENTS:I = 0x5

.field private static final GLOBAL_PARTS:I = 0x2

.field private static final GLOBAL_PARTS_ID:I = 0x3

.field private static final PARTS:I = 0x0

.field private static final PARTS_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AttachmentProvider"

.field public static final sDeletableAttachmentsURI:Landroid/net/Uri;

.field public static final sGlobalPartsURI:Landroid/net/Uri;

.field public static final sPartsURI:Landroid/net/Uri;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 32
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/provider/AttachmentProvider;->DEBUG:Z

    .line 34
    const-string v0, "content://com.htc.android.mail.attachmentprovider/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sPartsURI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.htc.android.mail.attachmentprovider/searchSvrParts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sGlobalPartsURI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.htc.android.mail.attachmentprovider/deletableAttachments"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sDeletableAttachmentsURI:Landroid/net/Uri;

    .line 45
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 48
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "parts"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "parts/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "searchSvrParts"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "searchSvrParts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "deletableAttachments"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "deletableAttachments/type/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.mail.attachmentprovider"

    const-string v2, "deletableAttachments/type/#/delete/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 66
    return-void
.end method

.method private QueryWhereByType(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "sdcardPath"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 410
    const-string v0, ""

    .line 411
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/android/mail/provider/AttachmentProvider;->isQueryInternalStorage(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " AND _filepath not like \'%s\' "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 414
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " AND _filepath like \'%s\' "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private deleteFiles(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 177
    .local v3, result:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 184
    .end local v3           #result:I
    .local v4, result:I
    :goto_0
    return v4

    .line 179
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, filepath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #file:Ljava/io/File;
    .end local v1           #filepath:Ljava/lang/String;
    :cond_3
    move v4, v3

    .line 184
    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0
.end method

.method private getDeleteIdList(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "uri"

    .prologue
    .line 104
    const/4 v8, 0x0

    .line 106
    .local v8, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    .line 107
    .local v7, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_2

    .line 109
    const/4 v11, 0x2

    :try_start_0
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 110
    .local v9, type:J
    const-wide/16 v11, 0x2

    cmp-long v11, v11, v9

    if-nez v11, :cond_2

    .line 111
    const/4 v11, 0x4

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, idList:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 115
    const-string v11, "AttachmentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get delete idList>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2c

    if-ne v11, v12, :cond_0

    .line 119
    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 120
    const-string v11, "AttachmentProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "subString idList>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, idAry:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, v0, v2

    .line 128
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v3           #id:Ljava/lang/String;
    :cond_1
    move-object v8, v5

    .line 140
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #idAry:[Ljava/lang/String;
    .end local v5           #idList:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v9           #type:J
    :cond_2
    :goto_1
    return-object v8

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 136
    const-string v11, "AttachmentProvider"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getFileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "idList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v7, 0x0

    .line 149
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v8, v7

    .line 168
    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v8

    .line 151
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v6, 0x0

    .line 153
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 154
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_filepath"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 156
    if-eqz v6, :cond_4

    move-object v8, v7

    .line 157
    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    if-nez v8, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    :try_start_2
    const-string v0, "_filepath"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 163
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_2
    throw v0

    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object v7, v8

    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v8, v7

    .line 168
    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 163
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .end local v7           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object v7, v8

    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private isQueryInternalStorage(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    .line 389
    const/4 v2, 0x0

    .line 391
    .local v2, result:Z
    const-wide/16 v3, 0x0

    .line 393
    .local v3, type:J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, last:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 398
    .end local v1           #last:Ljava/lang/String;
    :goto_0
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v2, 0x1

    .line 400
    :cond_0
    return v2

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 76
    sget-object v6, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 77
    .local v3, match:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 79
    .local v4, tokenId:J
    packed-switch v3, :pswitch_data_0

    .line 94
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/provider/AttachmentProvider;->getDeleteIdList(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, idList:Ljava/lang/String;
    const-string v6, "AttachmentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete attachments id list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, v2}, Lcom/htc/android/mail/provider/AttachmentProvider;->getFileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    .local v1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "AttachmentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete attachments file list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, v1}, Lcom/htc/android/mail/provider/AttachmentProvider;->deleteFiles(Ljava/util/ArrayList;)I

    move-result v0

    .line 89
    .local v0, count:I
    const-string v6, "AttachmentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete attachments counts>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #idList:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 189
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 190
    .local v7, id:J
    const-wide/16 v4, -0x1

    cmp-long v0, v7, v4

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-object v3

    .line 192
    :cond_0
    const/4 v10, 0x0

    .line 193
    .local v10, uri_part:Landroid/net/Uri;
    sget-object v0, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 194
    .local v9, match:I
    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    .line 195
    sget-object v10, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 200
    :goto_1
    invoke-static {v10, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, uri_query:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/mail/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_mimetype"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 208
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 197
    .end local v1           #uri_query:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    sget-object v10, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    goto :goto_1

    .line 208
    .restart local v1       #uri_query:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 427
    sget-boolean v0, Lcom/htc/android/mail/provider/AttachmentProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AttachmentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> openFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    const/high16 v6, 0x1000

    .line 440
    .local v6, actualMode:I
    :goto_0
    const/4 v7, 0x0

    .line 441
    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 443
    .local v9, filePath:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 444
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 450
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_2
    if-eqz v9, :cond_9

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 454
    invoke-virtual {p0}, Lcom/htc/android/mail/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/util/StorageControl;->getInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 455
    const/high16 v0, 0x1000

    if-ne v6, v0, :cond_7

    .line 456
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 466
    :goto_2
    return-object v0

    .line 432
    .end local v6           #actualMode:I
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #filePath:Ljava/lang/String;
    :cond_3
    const-string v0, "rw"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    const/high16 v6, 0x3000

    .restart local v6       #actualMode:I
    goto :goto_0

    .line 434
    .end local v6           #actualMode:I
    :cond_4
    const-string v0, "rwt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    const/high16 v6, 0x3400

    .restart local v6       #actualMode:I
    goto :goto_0

    .line 437
    .end local v6           #actualMode:I
    :cond_5
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    .restart local v6       #actualMode:I
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #filePath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 448
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 458
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access internal storage: Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_2

    .line 466
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 35
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 227
    sget-object v3, Lcom/htc/android/mail/provider/AttachmentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 228
    .local v23, match:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v31

    .line 230
    .local v31, tokenId:J
    packed-switch v23, :pswitch_data_0

    .line 371
    :pswitch_0
    const/16 v26, 0x0

    .line 373
    :goto_0
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    :goto_1
    return-object v26

    .line 234
    :pswitch_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 236
    .local v19, id:J
    if-nez p2, :cond_0

    .line 237
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v25, v3

    const/4 v3, 0x1

    const-string v6, "_data"

    aput-object v6, v25, v3

    const/4 v3, 0x2

    const-string v6, "_display_name"

    aput-object v6, v25, v3

    const/4 v3, 0x3

    const-string v6, "_size"

    aput-object v6, v25, v3

    const/4 v3, 0x4

    const-string v6, "_mime_type"

    aput-object v6, v25, v3

    const/4 v3, 0x5

    const-string v6, "mime_type"

    aput-object v6, v25, v3

    .end local p2
    .local v25, projection:[Ljava/lang/String;
    move-object/from16 p2, v25

    .line 248
    .end local v25           #projection:[Ljava/lang/String;
    .restart local p2
    :cond_0
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_filename"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "_filesize"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "_filepath"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "_mimetype"

    aput-object v6, v5, v3

    .line 249
    .local v5, projection_query:[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    sget-object v33, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 250
    .local v33, uri_part:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, v33

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 251
    .local v4, uri_query:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 252
    .local v12, c:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 253
    .local v16, fileName:Ljava/lang/String;
    const/16 v30, 0x0

    .line 254
    .local v30, size:I
    const/16 v17, 0x0

    .line 255
    .local v17, filePath:Ljava/lang/String;
    const/16 v24, 0x0

    .line 257
    .local v24, mimetype:Ljava/lang/String;
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    const-string v3, "_filename"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 259
    const-string v3, "_filesize"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 260
    const-string v3, "_filepath"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 261
    const-string v3, "_mimetype"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v24

    .line 266
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 270
    if-eqz v17, :cond_1

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const-string v3, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/html"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 272
    :cond_2
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 249
    .end local v4           #uri_query:Landroid/net/Uri;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v24           #mimetype:Ljava/lang/String;
    .end local v30           #size:I
    .end local v33           #uri_part:Landroid/net/Uri;
    :cond_3
    sget-object v33, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    goto :goto_2

    .line 263
    .restart local v4       #uri_query:Landroid/net/Uri;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #filePath:Ljava/lang/String;
    .restart local v24       #mimetype:Ljava/lang/String;
    .restart local v30       #size:I
    .restart local v33       #uri_part:Landroid/net/Uri;
    :cond_4
    const/16 v26, 0x0

    .line 266
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 373
    .end local v4           #uri_query:Landroid/net/Uri;
    .end local v5           #projection_query:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v19           #id:J
    .end local v24           #mimetype:Ljava/lang/String;
    .end local v30           #size:I
    .end local v33           #uri_part:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    :goto_3
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 266
    .restart local v4       #uri_query:Landroid/net/Uri;
    .restart local v5       #projection_query:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #filePath:Ljava/lang/String;
    .restart local v19       #id:J
    .restart local v24       #mimetype:Ljava/lang/String;
    .restart local v30       #size:I
    .restart local v33       #uri_part:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 275
    :cond_5
    new-instance v26, Landroid/database/MatrixCursor;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 276
    .local v26, ret:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v34, v0

    .line 277
    .local v34, values:[Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, i:I
    move-object/from16 v0, p2

    array-length v14, v0

    .local v14, count:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v14, :cond_c

    .line 278
    aget-object v13, p2, v18

    .line 279
    .local v13, column:Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v34, v18

    .line 277
    :cond_6
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 282
    :cond_7
    const-string v3, "_data"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 283
    aput-object v17, v34, v18

    goto :goto_5

    .line 285
    :cond_8
    const-string v3, "_display_name"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    aput-object v16, v34, v18

    goto :goto_5

    .line 288
    :cond_9
    const-string v3, "_size"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 289
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v34, v18

    goto :goto_5

    .line 291
    :cond_a
    const-string v3, "mime_type"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 292
    aput-object v24, v34, v18

    goto :goto_5

    .line 294
    :cond_b
    const-string v3, "_mime_type"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 295
    aput-object v24, v34, v18

    goto :goto_5

    .line 298
    .end local v13           #column:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 302
    .end local v4           #uri_query:Landroid/net/Uri;
    .end local v5           #projection_query:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v14           #count:I
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v18           #i:I
    .end local v19           #id:J
    .end local v24           #mimetype:Ljava/lang/String;
    .end local v26           #ret:Landroid/database/MatrixCursor;
    .end local v30           #size:I
    .end local v33           #uri_part:Landroid/net/Uri;
    .end local v34           #values:[Ljava/lang/Object;
    :pswitch_2
    const/16 v22, 0x0

    .line 303
    .local v22, mailboxC:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 304
    .restart local v12       #c:Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 305
    .restart local v26       #ret:Landroid/database/MatrixCursor;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v25, v3

    const/4 v3, 0x1

    const-string v6, "_filename"

    aput-object v6, v25, v3

    const/4 v3, 0x2

    const-string v6, "_filepath"

    aput-object v6, v25, v3

    const/4 v3, 0x3

    const-string v6, "_filesize"

    aput-object v6, v25, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    .end local p2
    .restart local v25       #projection:[Ljava/lang/String;
    :try_start_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_defaultfolder = %d or _defaultfolder = %d or _defaultfolder = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v11, 0x7ffffffc

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    const v11, 0x7ffffffb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x2

    const v11, 0x7ffffffd

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v11, "_id"

    aput-object v11, v8, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 316
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v21, ids:Ljava/lang/StringBuilder;
    if-eqz v22, :cond_10

    .line 318
    const/16 v18, 0x0

    .line 319
    .restart local v18       #i:I
    :goto_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 320
    if-nez v18, :cond_d

    .line 321
    const-string v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 323
    :cond_d
    const-string v3, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 365
    .end local v9           #where:Ljava/lang/String;
    .end local v18           #i:I
    .end local v21           #ids:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v15

    .line 366
    .local v15, e:Ljava/lang/Exception;
    :goto_8
    if-eqz v22, :cond_e

    :try_start_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_e
    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 373
    .end local v15           #e:Ljava/lang/Exception;
    :cond_f
    :goto_9
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 p2, v25

    .line 369
    .end local v25           #projection:[Ljava/lang/String;
    .restart local p2
    goto/16 :goto_1

    .line 328
    .end local p2
    .restart local v9       #where:Ljava/lang/String;
    .restart local v21       #ids:Ljava/lang/StringBuilder;
    .restart local v25       #projection:[Ljava/lang/String;
    :cond_10
    :try_start_6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_message not in (select _id from messages where _mailboxId in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AND _filepath is not null AND _filename is not null AND _filepath <> \'\' AND _filename <> \'\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AND _filepath not in (select _filepath from parts where _filepath like ? and _message in (select _id from messages where _mailboxId in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")))"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 334
    .local v29, sdcardPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/provider/AttachmentProvider;->QueryWhereByType(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 336
    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v29, v10, v3

    .line 338
    .local v10, selectionArg:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object/from16 v8, v25

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 339
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v28, v3

    const/4 v3, 0x1

    const-string v6, "_filename"

    aput-object v6, v28, v3

    const/4 v3, 0x2

    const-string v6, "_filepath"

    aput-object v6, v28, v3

    const/4 v3, 0x3

    const-string v6, "_icon"

    aput-object v6, v28, v3

    const/4 v3, 0x4

    const-string v6, "_filesize"

    aput-object v6, v28, v3

    .line 346
    .local v28, retProjection:[Ljava/lang/String;
    new-instance v27, Landroid/database/MatrixCursor;

    invoke-direct/range {v27 .. v28}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 348
    .end local v26           #ret:Landroid/database/MatrixCursor;
    .local v27, ret:Landroid/database/MatrixCursor;
    :goto_a
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 349
    move-object/from16 v0, v28

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v34, v0

    .line 350
    .restart local v34       #values:[Ljava/lang/Object;
    const/16 v18, 0x0

    .restart local v18       #i:I
    move-object/from16 v0, v28

    array-length v14, v0

    .restart local v14       #count:I
    :goto_b
    move/from16 v0, v18

    if-ge v0, v14, :cond_14

    .line 351
    aget-object v13, v28, v18

    .line 352
    .restart local v13       #column:Ljava/lang/String;
    const-string v3, "_filename"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 353
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v18

    .line 354
    add-int/lit8 v6, v18, 0x2

    aget-object v3, v34, v18

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/util/AttachmentIconMap;->getFileIconResource(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v6

    .line 350
    :cond_11
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 355
    :cond_12
    const-string v3, "_icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 357
    const-string v3, "_filesize"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 358
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v34, v18

    goto :goto_c

    .line 365
    .end local v13           #column:Ljava/lang/String;
    .end local v14           #count:I
    .end local v18           #i:I
    .end local v34           #values:[Ljava/lang/Object;
    :catch_1
    move-exception v15

    move-object/from16 v26, v27

    .end local v27           #ret:Landroid/database/MatrixCursor;
    .restart local v26       #ret:Landroid/database/MatrixCursor;
    goto/16 :goto_8

    .line 360
    .end local v26           #ret:Landroid/database/MatrixCursor;
    .restart local v13       #column:Ljava/lang/String;
    .restart local v14       #count:I
    .restart local v18       #i:I
    .restart local v27       #ret:Landroid/database/MatrixCursor;
    .restart local v34       #values:[Ljava/lang/Object;
    :cond_13
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v18

    goto :goto_c

    .line 373
    .end local v9           #where:Ljava/lang/String;
    .end local v10           #selectionArg:[Ljava/lang/String;
    .end local v13           #column:Ljava/lang/String;
    .end local v14           #count:I
    .end local v18           #i:I
    .end local v21           #ids:Ljava/lang/StringBuilder;
    .end local v27           #ret:Landroid/database/MatrixCursor;
    .end local v28           #retProjection:[Ljava/lang/String;
    .end local v29           #sdcardPath:Ljava/lang/String;
    .end local v34           #values:[Ljava/lang/Object;
    :catchall_2
    move-exception v3

    move-object/from16 p2, v25

    .end local v25           #projection:[Ljava/lang/String;
    .restart local p2
    goto/16 :goto_3

    .line 363
    .end local p2
    .restart local v9       #where:Ljava/lang/String;
    .restart local v10       #selectionArg:[Ljava/lang/String;
    .restart local v14       #count:I
    .restart local v18       #i:I
    .restart local v21       #ids:Ljava/lang/StringBuilder;
    .restart local v25       #projection:[Ljava/lang/String;
    .restart local v27       #ret:Landroid/database/MatrixCursor;
    .restart local v28       #retProjection:[Ljava/lang/String;
    .restart local v29       #sdcardPath:Ljava/lang/String;
    .restart local v34       #values:[Ljava/lang/Object;
    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_a

    .end local v14           #count:I
    .end local v18           #i:I
    .end local v34           #values:[Ljava/lang/Object;
    :cond_15
    move-object/from16 v26, v27

    .line 368
    .end local v27           #ret:Landroid/database/MatrixCursor;
    .restart local v26       #ret:Landroid/database/MatrixCursor;
    goto/16 :goto_9

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method
