.class Lcom/android/phone/SmartDataRoamingConfirm$1;
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
    .line 134
    iput-object p1, p0, Lcom/android/phone/SmartDataRoamingConfirm$1;->this$0:Lcom/android/phone/SmartDataRoamingConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 139
    invoke-static {}, Lcom/android/phone/SmartDataRoamingConfirm;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartDataRoamingConfirm"

    const-string v1, "cancel requestSetDataRoaming()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SmartDataRoamingConfirm$1;->this$0:Lcom/android/phone/SmartDataRoamingConfirm;

    const/16 v1, 0x1b5a

    invoke-virtual {v0, v1}, Lcom/android/phone/SmartDataRoamingConfirm;->dismissDialog(I)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/SmartDataRoamingConfirm$1;->this$0:Lcom/android/phone/SmartDataRoamingConfirm;

    invoke-virtual {v0}, Lcom/android/phone/SmartDataRoamingConfirm;->finish()V

    .line 143
    return-void
.end method
