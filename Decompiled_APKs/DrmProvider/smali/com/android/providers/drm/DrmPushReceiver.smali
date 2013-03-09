.class public Lcom/android/providers/drm/DrmPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmPushReceiver.java"


# static fields
.field private static final LOGD:Z = false

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DrmPushReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/DrmPushReceiver;->METADATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, rightMimeType:Ljava/lang/String;
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 66
    .local v1, rightData:[B
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/drm/DrmIntentService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, drmIntentService:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 70
    const-string v3, "INSTALL_WAP_PUSH_RIGHTS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    .end local v0           #drmIntentService:Landroid/content/Intent;
    .end local v1           #rightData:[B
    .end local v2           #rightMimeType:Ljava/lang/String;
    :cond_0
    return-void
.end method
