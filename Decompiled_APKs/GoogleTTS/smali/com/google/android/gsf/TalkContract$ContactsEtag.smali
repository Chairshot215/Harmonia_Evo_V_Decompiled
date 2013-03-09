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
