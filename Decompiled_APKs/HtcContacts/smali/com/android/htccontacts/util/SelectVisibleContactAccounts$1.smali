.class final Lcom/android/htccontacts/util/SelectVisibleContactAccounts$1;
.super Ljava/lang/Object;
.source "SelectVisibleContactAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->createDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 172
    new-instance v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;

    invoke-direct {v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method
