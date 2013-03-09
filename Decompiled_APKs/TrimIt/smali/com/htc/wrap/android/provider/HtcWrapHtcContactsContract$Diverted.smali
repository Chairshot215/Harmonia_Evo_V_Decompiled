.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Diverted;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Diverted"
.end annotation


# static fields
.field public static final DIVERTED_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

.field public static final DIVERTED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1181
    sget-object v0, Landroid/provider/HtcContactsContract$Diverted;->DIVERTED_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Diverted;->DIVERTED_CONTENT_URI:Landroid/net/Uri;

    .line 1185
    sget-object v0, Landroid/provider/HtcContactsContract$Diverted;->DIVERTED_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Diverted;->DIVERTED_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
