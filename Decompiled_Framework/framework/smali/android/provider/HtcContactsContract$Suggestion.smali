.class public final Landroid/provider/HtcContactsContract$Suggestion;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Suggestion"
.end annotation


# static fields
.field public static final CONTACT_ID1:Ljava/lang/String; = "contact_id1"

.field public static final CONTACT_ID2:Ljava/lang/String; = "contact_id2"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final MERGE_CONTACT_COMPLETE:Ljava/lang/String; = "android.intent.action.CONTACT_MERGE_COMPLETE"

.field public static final RAW_CONTACT_ID1:Ljava/lang/String; = "raw_contact_id1"

.field public static final RAW_CONTACT_ID2:Ljava/lang/String; = "raw_contact_id2"

.field public static final REMOVED:Ljava/lang/String; = "removed"

.field public static final SCORE:Ljava/lang/String; = "score"

.field public static final TABLE_NAME:Ljava/lang/String; = "suggestion"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "suggestion"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
