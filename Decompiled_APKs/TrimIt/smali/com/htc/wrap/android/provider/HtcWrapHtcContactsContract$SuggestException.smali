.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SuggestException;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
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
    .locals 1

    .prologue
    .line 957
    sget-object v0, Landroid/provider/HtcContactsContract$SuggestException;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SuggestException;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
