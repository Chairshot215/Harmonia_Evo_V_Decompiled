.class public Landroid/provider/HtcMessages$HtcSms$PendingMsg;
.super Ljava/lang/Object;
.source "HtcMessages.java"

# interfaces
.implements Landroid/provider/HtcMessages$HtcPendingMsgColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcMessages$HtcSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMsg"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/HtcMessages$HtcSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "pending-list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
