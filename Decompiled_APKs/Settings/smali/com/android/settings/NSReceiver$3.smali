.class Lcom/android/settings/NSReceiver$3;
.super Ljava/lang/Object;
.source "NSReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NSReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NSReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/NSReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/NSReceiver$3;->this$0:Lcom/android/settings/NSReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    const-string v0, "NetSharing"

    const-string v1, "setNetSharing(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/NSReceiver$3;->this$0:Lcom/android/settings/NSReceiver;

    #getter for: Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/NSReceiver;->access$000(Lcom/android/settings/NSReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 275
    const-string v0, "NetSharing_NSReceiver"

    const-string v1, "write USB type"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    sput-boolean v2, Lcom/android/settings/NetSharingEnabler;->opening:Z

    .line 279
    iget-object v0, p0, Lcom/android/settings/NSReceiver$3;->this$0:Lcom/android/settings/NSReceiver;

    #getter for: Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/NSReceiver;->access$000(Lcom/android/settings/NSReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    sput-boolean v2, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 281
    :cond_1
    return-void
.end method
