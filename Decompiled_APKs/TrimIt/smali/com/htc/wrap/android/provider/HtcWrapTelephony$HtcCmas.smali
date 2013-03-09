.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$BaseHtcCmasColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcCmas"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "presidential DESC, date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1538
    sget-object v0, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
