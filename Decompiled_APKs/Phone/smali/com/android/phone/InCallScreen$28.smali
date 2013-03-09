.class Lcom/android/phone/InCallScreen$28;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showTurnOnRadioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8181
    iput-object p1, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8183
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8184
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "AlertDialog: POSITIVE click..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 8185
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    const-class v3, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 8188
    return-void
.end method
