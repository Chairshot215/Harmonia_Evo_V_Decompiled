.class Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;
.super Ljava/lang/Object;
.source "ConnManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/connection/ConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiFiObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/connection/ConnManager;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"
    .parameter "arg"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/htc/omadm/libdo/connection/ConnManager;->mWiFiConnState:I
    invoke-static {v1, v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->access$202(Lcom/htc/omadm/libdo/connection/ConnManager;I)I

    .line 370
    const-string v0, "ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method
