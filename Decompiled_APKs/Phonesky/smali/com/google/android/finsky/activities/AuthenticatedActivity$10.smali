.class Lcom/google/android/finsky/activities/AuthenticatedActivity$10;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->getMarketMetadataAndLoadLibraries(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$continueWhenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->val$continueWhenDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 887
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->setMarketMetadata(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    .line 889
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getSelfUpdateScheduler()Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->checkForSelfUpdate(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    .line 890
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->val$continueWhenDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 891
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 884
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
