.class public final Landroid/provider/HtcContactsContract$SuggestException;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestException"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FILTER_DIRECTORY:Ljava/lang/String; = "suggest_filter"

.field public static final MERGE_CONTACT_COMPLETE:Ljava/lang/String; = "android.intent.action.CONTACT_MERGE_COMPLETE"

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "suggest_exception"

.field public static final TARGET_ID:Ljava/lang/String; = "target_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "suggest_exception"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$SuggestException;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
