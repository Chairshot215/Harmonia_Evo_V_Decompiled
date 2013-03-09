.class Lcom/android/i18n/addressinput/AddressWidget$3;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/AddressWidget;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    #getter for: Lcom/android/i18n/addressinput/AddressWidget;->mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;
    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->access$600(Lcom/android/i18n/addressinput/AddressWidget;)Lcom/android/i18n/addressinput/AddressWidget$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    #getter for: Lcom/android/i18n/addressinput/AddressWidget;->mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;
    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->access$600(Lcom/android/i18n/addressinput/AddressWidget;)Lcom/android/i18n/addressinput/AddressWidget$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/i18n/addressinput/AddressWidget$Listener;->onInitializing()V

    .line 532
    :cond_0
    return-void
.end method

.method public dataLoadingEnd()V
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data loading completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    #getter for: Lcom/android/i18n/addressinput/AddressWidget;->mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;
    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->access$600(Lcom/android/i18n/addressinput/AddressWidget;)Lcom/android/i18n/addressinput/AddressWidget$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    #getter for: Lcom/android/i18n/addressinput/AddressWidget;->mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;
    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->access$600(Lcom/android/i18n/addressinput/AddressWidget;)Lcom/android/i18n/addressinput/AddressWidget$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/i18n/addressinput/AddressWidget$Listener;->onInitialized()V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v0, v0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, v1, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method
