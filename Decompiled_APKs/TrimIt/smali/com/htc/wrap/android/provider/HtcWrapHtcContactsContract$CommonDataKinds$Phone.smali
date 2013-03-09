.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1058
    sget-object v0, Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 1060
    sget-object v0, Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
