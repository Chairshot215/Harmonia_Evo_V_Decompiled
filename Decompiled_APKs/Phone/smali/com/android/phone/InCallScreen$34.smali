.class Lcom/android/phone/InCallScreen$34;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->callWaitingDialog()V
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
    .line 9975
    iput-object p1, p0, Lcom/android/phone/InCallScreen$34;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 9977
    iget-object v0, p0, Lcom/android/phone/InCallScreen$34;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, ".....onDismiss()..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9978
    iget-object v0, p0, Lcom/android/phone/InCallScreen$34;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$6100(Lcom/android/phone/InCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9980
    iget-object v0, p0, Lcom/android/phone/InCallScreen$34;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, ".....finish incall screen and dialog..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 9981
    iget-object v0, p0, Lcom/android/phone/InCallScreen$34;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 9983
    :cond_0
    return-void
.end method
