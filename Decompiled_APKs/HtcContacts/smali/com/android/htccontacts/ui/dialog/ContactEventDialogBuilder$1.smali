.class final Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$1;
.super Ljava/lang/Object;
.source "ContactEventDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->prepareDialog(Landroid/content/Context;Landroid/app/Dialog;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    return-void
.end method
