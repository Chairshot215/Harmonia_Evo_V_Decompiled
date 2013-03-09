.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcVvm;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$BaseHtcVvmColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcVvm"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELIVERY:Ljava/lang/String; = "*@DELIVERY"

.field public static final MSG_TYPE_NAME:Ljava/lang/String; = "vvm"

.field public static final PRIVATE:Ljava/lang/String; = "*@PRIVATE"

.field public static final SYNC_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UNKNOWN:Ljava/lang/String; = "*@UNKNOWN"

.field public static final VVM_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1151
    sget-object v0, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    .line 1153
    sget-object v0, Landroid/provider/Telephony$HtcVvm;->VVM_ID_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcVvm;->VVM_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1155
    sget-object v0, Landroid/provider/Telephony$HtcVvm;->SYNC_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcVvm;->SYNC_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
