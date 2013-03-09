.class Lcom/android/htcdialer/Dialer$19;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 5194
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$19;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 5196
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5197
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$19;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$2802(Lcom/android/htcdialer/Dialer;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 5198
    return-void
.end method
