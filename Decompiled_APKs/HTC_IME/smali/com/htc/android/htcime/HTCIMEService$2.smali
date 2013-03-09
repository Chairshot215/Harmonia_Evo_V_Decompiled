.class Lcom/htc/android/htcime/HTCIMEService$2;
.super Ljava/lang/Object;
.source "HTCIMEService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/HTCIMEService;->showProtectionError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMEService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter

    .prologue
    .line 3625
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMEService$2;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "d"
    .parameter "w"

    .prologue
    .line 3627
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3628
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService$2;->this$0:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->hideWindow()V

    .line 3629
    return-void
.end method
