.class Lcom/android/phone/NetworkListDialog$4;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkListDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/phone/NetworkListDialog$4;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/phone/NetworkListDialog$4;->this$0:Lcom/android/phone/NetworkListDialog;

    #calls: Lcom/android/phone/NetworkListDialog;->hasService(Landroid/telephony/ServiceState;)Z
    invoke-static {v0, p1}, Lcom/android/phone/NetworkListDialog;->access$300(Lcom/android/phone/NetworkListDialog;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/phone/NetworkListDialog$4;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v0}, Lcom/android/phone/NetworkListDialog;->finish()V

    .line 573
    :cond_0
    return-void
.end method
