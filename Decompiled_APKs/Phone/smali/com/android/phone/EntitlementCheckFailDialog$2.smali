.class Lcom/android/phone/EntitlementCheckFailDialog$2;
.super Ljava/lang/Object;
.source "EntitlementCheckFailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EntitlementCheckFailDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EntitlementCheckFailDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EntitlementCheckFailDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/EntitlementCheckFailDialog$2;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/phone/EntitlementCheckFailDialog$2;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-virtual {v0}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    .line 187
    return-void
.end method
