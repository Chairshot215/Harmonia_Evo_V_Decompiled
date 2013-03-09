.class public final Landroid/provider/Telephony$HtcVvm;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$BaseHtcVvmColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    .locals 2

    sget-object v0, Landroid/provider/Telephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vvm"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vvmId"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$HtcVvm;->VVM_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "sync"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$HtcVvm;->SYNC_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
