.class Lcom/android/phone/NetworkSimLock$8;
.super Ljava/lang/Object;
.source "NetworkSimLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSimLock;->rebootDeviceDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSimLock;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$8;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$8;->this$0:Lcom/android/phone/NetworkSimLock;

    #calls: Lcom/android/phone/NetworkSimLock;->rebootDevice()V
    invoke-static {v0}, Lcom/android/phone/NetworkSimLock;->access$1300(Lcom/android/phone/NetworkSimLock;)V

    .line 450
    return-void
.end method
