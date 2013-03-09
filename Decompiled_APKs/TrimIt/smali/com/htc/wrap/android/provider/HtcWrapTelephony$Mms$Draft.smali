.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Draft;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Draft"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 955
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
