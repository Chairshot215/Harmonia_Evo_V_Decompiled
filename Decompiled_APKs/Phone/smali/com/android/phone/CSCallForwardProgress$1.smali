.class Lcom/android/phone/CSCallForwardProgress$1;
.super Ljava/lang/Object;
.source "CSCallForwardProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CSCallForwardProgress;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CSCallForwardProgress;


# direct methods
.method constructor <init>(Lcom/android/phone/CSCallForwardProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/phone/CSCallForwardProgress$1;->this$0:Lcom/android/phone/CSCallForwardProgress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/phone/CSCallForwardProgress$1;->this$0:Lcom/android/phone/CSCallForwardProgress;

    invoke-virtual {v0}, Lcom/android/phone/CSCallForwardProgress;->finish()V

    .line 109
    return-void
.end method
