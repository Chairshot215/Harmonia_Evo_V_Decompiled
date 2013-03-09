.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Suggestion;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
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
    .locals 1

    .prologue
    .line 980
    sget-object v0, Landroid/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
