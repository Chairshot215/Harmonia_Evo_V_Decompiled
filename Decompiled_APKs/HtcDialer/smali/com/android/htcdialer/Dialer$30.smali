.class Lcom/android/htcdialer/Dialer$30;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->showConfirmBlockCallerDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8375
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$30;->this$0:Lcom/android/htcdialer/Dialer;

    iput p2, p0, Lcom/android/htcdialer/Dialer$30;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8377
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$30;->this$0:Lcom/android/htcdialer/Dialer;

    iget v1, p0, Lcom/android/htcdialer/Dialer$30;->val$position:I

    #calls: Lcom/android/htcdialer/Dialer;->addContactToBlacklist(I)V
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$6400(Lcom/android/htcdialer/Dialer;I)V

    .line 8378
    return-void
.end method
