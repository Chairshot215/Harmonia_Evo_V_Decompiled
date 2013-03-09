.class Lcom/android/phone/SmartDataRoamingConfirm$2;
.super Ljava/lang/Object;
.source "SmartDataRoamingConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SmartDataRoamingConfirm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SmartDataRoamingConfirm;


# direct methods
.method constructor <init>(Lcom/android/phone/SmartDataRoamingConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/phone/SmartDataRoamingConfirm$2;->this$0:Lcom/android/phone/SmartDataRoamingConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 126
    invoke-static {}, Lcom/android/phone/SmartDataRoamingConfirm;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SmartDataRoamingConfirm"

    const-string v2, "requestSetSmartDataRoaming()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 128
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestGetSmartDataRoamingStatus(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/SmartDataRoamingConfirm$2;->this$0:Lcom/android/phone/SmartDataRoamingConfirm;

    const/16 v2, 0x1b5a

    invoke-virtual {v1, v2}, Lcom/android/phone/SmartDataRoamingConfirm;->dismissDialog(I)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/SmartDataRoamingConfirm$2;->this$0:Lcom/android/phone/SmartDataRoamingConfirm;

    invoke-virtual {v1}, Lcom/android/phone/SmartDataRoamingConfirm;->finish()V

    .line 132
    return-void
.end method
