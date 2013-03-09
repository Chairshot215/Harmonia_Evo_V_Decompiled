.class Lcom/android/settings/NSReceiver$1;
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
    .line 161
    iput-object p1, p0, Lcom/android/settings/NSReceiver$1;->this$0:Lcom/android/settings/NSReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "NetSharing"

    const-string v1, "setNetSharing(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/NSReceiver$1;->this$0:Lcom/android/settings/NSReceiver;

    #getter for: Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/NSReceiver;->access$000(Lcom/android/settings/NSReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    .line 173
    return-void
.end method
