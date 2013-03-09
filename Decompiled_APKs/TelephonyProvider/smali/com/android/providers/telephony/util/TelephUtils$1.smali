.class final Lcom/android/providers/telephony/util/TelephUtils$1;
.super Ljava/lang/Object;
.source "TelephUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/util/TelephUtils;->checkDbLoadable(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/providers/telephony/util/TelephUtils$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/providers/telephony/util/TelephUtils$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/android/providers/telephony/service/TelephonyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/providers/telephony/service/TelephonyService;->ACTION_CHECK_DB_LOADABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/providers/telephony/util/TelephUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method
