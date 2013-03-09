.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Carriers"
.end annotation


# static fields
.field public static final CDMA_CONTENT_URI:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field public static final FLAG_APN_DISPATCH_MODE:Z = false

.field public static final INSERT_BY:Ljava/lang/String; = "insert_by"

.field public static final MMSPROTOCOL:Ljava/lang/String; = "mmsprotocol"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final STATE:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1110
    sget-boolean v0, Landroid/provider/Telephony$Carriers;->FLAG_APN_DISPATCH_MODE:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;->FLAG_APN_DISPATCH_MODE:Z

    .line 1114
    sget-object v0, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
