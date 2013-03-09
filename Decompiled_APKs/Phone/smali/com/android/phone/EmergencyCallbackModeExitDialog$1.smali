.class Lcom/android/phone/EmergencyCallbackModeExitDialog$1;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    #calls: Lcom/android/phone/EmergencyCallbackModeExitDialog;->showEmergencyCallbackModeExitDialog()V
    invoke-static {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    .line 132
    invoke-static {}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method
