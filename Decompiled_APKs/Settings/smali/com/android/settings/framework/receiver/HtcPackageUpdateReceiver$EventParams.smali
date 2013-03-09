.class public Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;
.super Ljava/lang/Object;
.source "HtcPackageUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventParams"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->this$0:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
