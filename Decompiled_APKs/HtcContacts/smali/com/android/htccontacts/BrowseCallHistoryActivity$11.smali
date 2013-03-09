.class Lcom/android/htccontacts/BrowseCallHistoryActivity$11;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;->addToContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$11;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2447
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2448
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$11;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2902(Lcom/android/htccontacts/BrowseCallHistoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2449
    return-void
.end method
