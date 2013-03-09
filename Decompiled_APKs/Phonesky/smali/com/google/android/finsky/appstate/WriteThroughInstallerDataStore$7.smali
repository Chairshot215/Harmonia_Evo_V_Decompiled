.class Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

.field final synthetic val$deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$timestampMs:J


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->val$deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iput-wide p4, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->val$timestampMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    #getter for: Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->access$000(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->val$deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iget-wide v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;->val$timestampMs:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    .line 166
    return-void
.end method
