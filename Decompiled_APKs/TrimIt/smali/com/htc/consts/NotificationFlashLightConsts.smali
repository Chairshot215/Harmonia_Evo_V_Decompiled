.class public Lcom/htc/consts/NotificationFlashLightConsts;
.super Ljava/lang/Object;
.source "NotificationFlashLightConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
    }
.end annotation


# static fields
.field public static final ALL_DATA_CODE:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.provider.settings"

.field public static COLUMN_TYPE:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PATH:Ljava/lang/String; = "nfl"

.field public static final TABLE_NAME:Ljava/lang/String; = "nfl"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const-string v0, "content://com.htc.provider.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "boolean"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts;->COLUMN_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
