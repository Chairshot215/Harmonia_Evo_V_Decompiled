.class public final Lcom/google/android/gsf/TalkContract$ContactsEtag;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsEtag"
.end annotation


# static fields
.field private static COLUMN_ETAG:I

.field private static COLUMN_OTR_ETAG:I

.field private static final CONTACT_ETAG_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_OTR_ETAG_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "etag"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTACT_ETAG_PROJECTION:[Ljava/lang/String;

    .line 552
    sput v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_ETAG:I

    .line 554
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "otr_etag"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTACT_OTR_ETAG_PROJECTION:[Ljava/lang/String;

    .line 558
    sput v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_OTR_ETAG:I

    .line 563
    const-string v0, "content://com.google.android.providers.talk/contactsEtag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOtrEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 8
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 529
    const/4 v7, 0x0

    .line 531
    .local v7, retVal:Ljava/lang/String;
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

    move-result-object v6

    .line 538
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    sget v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_OTR_ETAG:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 542
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 545
    return-object v7

    .line 542
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final getRosterEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 8
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 509
    const/4 v7, 0x0

    .line 511
    .local v7, retVal:Ljava/lang/String;
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

    move-result-object v6

    .line 518
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    sget v0, Lcom/google/android/gsf/TalkContract$ContactsEtag;->COLUMN_ETAG:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 522
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 525
    return-object v7

    .line 522
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
