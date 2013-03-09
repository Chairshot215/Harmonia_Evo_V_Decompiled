.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;
.super Landroid/provider/Telephony$Carriers;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABEARER:Ljava/lang/String; = "databearer"

.field public static final PPPNUMBER:Ljava/lang/String; = "pppnumber"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1139
    sget-object v0, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0}, Landroid/provider/Telephony$Carriers;-><init>()V

    return-void
.end method
