.class Lcom/android/phone/InCallScreen$20;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->getEndCallHandlDialog(JLjava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
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
    .line 7068
    iput-object p1, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 7071
    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mDisplayingEndCallHandler:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3902(Lcom/android/phone/InCallScreen;Z)Z

    .line 7073
    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7074
    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 7076
    :cond_0
    return-void
.end method
