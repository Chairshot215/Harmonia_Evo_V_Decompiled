.class public final Lcom/google/android/gsf/TalkContract$ContactsEtag;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$ContactsEtagColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsEtag"
.end annotation


# static fields
.field private static COLUMN_ETAG:I = 0x0

.field private static COLUMN_OTR_ETAG:I = 0x0

.field private static final CONTACT_ETAG_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTACT_OTR_ETAG_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/gtalk-contactsEtag"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/gtalk-contactsEtag"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 695
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "etag"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTACT_ETAG_PROJECTION:[Ljava/lang/String;

    .line 699
    sput v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_ETAG:I

    .line 701
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "otr_etag"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTACT_OTR_ETAG_PROJECTION:[Ljava/lang/String;

    .line 705
    sput v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_OTR_ETAG:I

    .line 710
    const-string v0, "content://com.google.android.providers.talk/contactsEtag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOtrEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 678
    sget-object v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTACT_OTR_ETAG_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 685
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    sget v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_OTR_ETAG:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 689
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 692
    return-object v1

    .line 689
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    move-object v1, v4

    goto :goto_0
.end method

.method public static final getRosterEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 658
    sget-object v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTACT_ETAG_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 665
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    sget v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_ETAG:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 669
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 672
    return-object v1

    .line 669
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    move-object v1, v4

    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 646
    sget-object v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 651
    sget-object v1, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    if-nez p3, :cond_0

    move-object v5, v4

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
