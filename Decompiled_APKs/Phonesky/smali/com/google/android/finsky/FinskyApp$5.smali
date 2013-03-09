.class Lcom/google/android/finsky/FinskyApp$5;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/FinskyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/FinskyApp;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$5;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;Z)Z
    .locals 1
    .parameter "context"
    .parameter "accountName"
    .parameter "pendingNotifications"
    .parameter "allowCancellation"

    .prologue
    .line 836
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;Z)Z

    move-result v0

    return v0
.end method
