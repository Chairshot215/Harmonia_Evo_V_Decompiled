.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$VIP;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VIP"
.end annotation


# static fields
.field public static final MASK:I = 0x2

.field public static final VIP_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

.field public static final VIP_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/HtcContactsContract$VIP;->VIP_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$VIP;->VIP_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/HtcContactsContract$VIP;->VIP_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$VIP;->VIP_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
