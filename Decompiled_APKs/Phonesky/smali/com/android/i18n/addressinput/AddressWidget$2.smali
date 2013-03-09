.class Lcom/android/i18n/addressinput/AddressWidget$2;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/AddressWidget;->updateChildNodes(Landroid/widget/AdapterView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/AddressWidget;

.field final synthetic val$myId:Lcom/android/i18n/addressinput/AddressField;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$2;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iput-object p2, p0, Lcom/android/i18n/addressinput/AddressWidget$2;->val$myId:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public dataLoadingEnd()V
    .locals 3

    .prologue
    .line 498
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$2;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$2;->val$myId:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;-><init>(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V

    .line 499
    .local v0, updateChild:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$2;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, v1, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    return-void
.end method
