.class Lcom/android/phone/NetworkSimLock$5;
.super Ljava/lang/Object;
.source "NetworkSimLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSimLock;->simLockUI()V
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
    .line 267
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$5;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 270
    invoke-static {}, Lcom/android/phone/NetworkSimLock;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$5;->this$0:Lcom/android/phone/NetworkSimLock;

    const v1, 0x7f0e049b

    #calls: Lcom/android/phone/NetworkSimLock;->rebootDeviceDialog(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSimLock;->access$600(Lcom/android/phone/NetworkSimLock;I)V

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$5;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSimLock;->finish()V

    goto :goto_0
.end method
