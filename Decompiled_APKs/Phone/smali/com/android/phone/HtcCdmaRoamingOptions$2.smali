.class Lcom/android/phone/HtcCdmaRoamingOptions$2;
.super Ljava/lang/Object;
.source "HtcCdmaRoamingOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaRoamingOptions;->showAlertDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

.field final synthetic val$roamingType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/phone/HtcCdmaRoamingOptions$2;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    iput-object p2, p0, Lcom/android/phone/HtcCdmaRoamingOptions$2;->val$roamingType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 331
    const-string v0, "HtcCdmaRoamingOptions"

    const-string v1, "OoO Cancel action ~"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions$2;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingOptions$2;->val$roamingType:Ljava/lang/String;

    const/4 v2, 0x0

    #calls: Lcom/android/phone/HtcCdmaRoamingOptions;->setupRoamingModeState(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/HtcCdmaRoamingOptions;->access$400(Lcom/android/phone/HtcCdmaRoamingOptions;Ljava/lang/String;Z)V

    .line 333
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingOptions$2;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    #calls: Lcom/android/phone/HtcCdmaRoamingOptions;->updateRoamingSettings()V
    invoke-static {v0}, Lcom/android/phone/HtcCdmaRoamingOptions;->access$500(Lcom/android/phone/HtcCdmaRoamingOptions;)V

    .line 334
    return-void
.end method
