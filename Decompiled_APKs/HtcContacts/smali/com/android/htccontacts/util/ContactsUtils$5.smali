.class final Lcom/android/htccontacts/util/ContactsUtils$5;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsUtils;->getComfirmDialog(Landroid/content/Context;IIILcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionListener:Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsUtils$5;->val$actionListener:Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$5;->val$actionListener:Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;

    if-eqz v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$5;->val$actionListener:Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;

    invoke-interface {v0}, Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;->action1Done()V

    .line 2682
    :cond_0
    return-void
.end method
