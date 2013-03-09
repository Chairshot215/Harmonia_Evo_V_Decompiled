.class Lcom/android/phone/DataRoamingConfirm$1;
.super Ljava/lang/Object;
.source "DataRoamingConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DataRoamingConfirm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingConfirm;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/DataRoamingConfirm$1;->this$0:Lcom/android/phone/DataRoamingConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/DataRoamingConfirm$1;->this$0:Lcom/android/phone/DataRoamingConfirm;

    #calls: Lcom/android/phone/DataRoamingConfirm;->disableDataRoaming()V
    invoke-static {v0}, Lcom/android/phone/DataRoamingConfirm;->access$000(Lcom/android/phone/DataRoamingConfirm;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/DataRoamingConfirm$1;->this$0:Lcom/android/phone/DataRoamingConfirm;

    invoke-virtual {v0}, Lcom/android/phone/DataRoamingConfirm;->finish()V

    .line 109
    return-void
.end method
