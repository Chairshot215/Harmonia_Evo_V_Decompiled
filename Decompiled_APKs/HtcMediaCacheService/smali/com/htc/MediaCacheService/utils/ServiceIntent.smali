.class public Lcom/htc/MediaCacheService/utils/ServiceIntent;
.super Ljava/lang/Object;
.source "ServiceIntent.java"


# static fields
.field public static final CLIENT_VERSION_MAJOR:Ljava/lang/String; = "MAJOR"

.field private static final CLIENT_VERSION_MAJOR_VALUE:I = 0x1

.field public static final CLIENT_VERSION_MINOR:Ljava/lang/String; = "MINOR"

.field private static final CLIENT_VERSION_MINOR_VALUE:I = 0x0

.field private static final COMPONENT:Landroid/content/ComponentName; = null

.field public static final MSG_REGISTER_CLIENT:I = 0x1

.field public static final MSG_SET_VALUE:I = 0x3

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.MediaCacheProvider"

    const-string v2, "com.htc.MediaCacheProvider.main.MediaCacheService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/MediaCacheService/utils/ServiceIntent;->COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBindIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/MediaCacheService/utils/ServiceIntent;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    const-string v1, "MAJOR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v1, "MINOR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    return-object v0
.end method
