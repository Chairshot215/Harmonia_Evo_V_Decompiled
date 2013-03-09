.class public final Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcMessages;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$BaseHtcVvmColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtcMessages"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static DEFAULT_SORT_ORDER:Ljava/lang/String; = null

.field public static final MSG_TYPE_NAME:Ljava/lang/String; = "htcmsgs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1210
    sget-object v0, Landroid/provider/Telephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    .line 1215
    sget-object v0, Landroid/provider/Telephony$HtcMessages;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcMessages;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
