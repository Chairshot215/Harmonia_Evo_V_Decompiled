.class Lcom/android/phone/NetworkSimLock$9;
.super Ljava/lang/Object;
.source "NetworkSimLock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSimLock;->unlockOthersTypeLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSimLock;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$9;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$9;->this$0:Lcom/android/phone/NetworkSimLock;

    #calls: Lcom/android/phone/NetworkSimLock;->processTitle()V
    invoke-static {v0}, Lcom/android/phone/NetworkSimLock;->access$1400(Lcom/android/phone/NetworkSimLock;)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$9;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mChannelName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/NetworkSimLock;->access$800(Lcom/android/phone/NetworkSimLock;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 468
    return-void
.end method
