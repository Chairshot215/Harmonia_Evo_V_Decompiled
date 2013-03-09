.class public Lcom/htc/util/backup/PCSyncStatusProviderUtil;
.super Ljava/lang/Object;
.source "PCSyncStatusProviderUtil.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_RUN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "content://com.htc.android.pcsync/brstatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/backup/PCSyncStatusProviderUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
