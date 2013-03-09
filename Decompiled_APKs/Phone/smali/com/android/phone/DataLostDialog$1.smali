.class Lcom/android/phone/DataLostDialog$1;
.super Ljava/lang/Object;
.source "DataLostDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DataLostDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataLostDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/DataLostDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/DataLostDialog$1;->this$0:Lcom/android/phone/DataLostDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/DataLostDialog$1;->this$0:Lcom/android/phone/DataLostDialog;

    invoke-virtual {v0}, Lcom/android/phone/DataLostDialog;->finish()V

    .line 103
    return-void
.end method
