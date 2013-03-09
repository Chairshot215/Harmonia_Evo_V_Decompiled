.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;
.super Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GsmCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1131
    sget-object v0, Landroid/provider/Telephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;-><init>()V

    return-void
.end method
