.class final Lcom/android/htccontacts/util/SelectVisibleContactAccounts$2;
.super Ljava/lang/Object;
.source "SelectVisibleContactAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->createDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$2;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 168
    return-void
.end method
