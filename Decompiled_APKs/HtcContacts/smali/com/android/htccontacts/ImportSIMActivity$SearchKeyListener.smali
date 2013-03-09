.class Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;
.super Ljava/lang/Object;
.source "ImportSIMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportSIMActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/htccontacts/ImportSIMActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    const/16 v2, 0x54

    if-ne p2, v2, :cond_1

    .line 86
    const-string v2, "ImportSIMActivity"

    const-string v3, "SearchKey is pressed..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v2, v4, v1, v4, v1}, Lcom/android/htccontacts/ImportSIMActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/ImportSIMActivity;->access$100(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 94
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #calls: Lcom/android/htccontacts/ImportSIMActivity;->showSecondDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/ImportSIMActivity;->access$200(Lcom/android/htccontacts/ImportSIMActivity;)V

    .line 98
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
    invoke-static {v1}, Lcom/android/htccontacts/ImportSIMActivity;->access$300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
    invoke-static {v1}, Lcom/android/htccontacts/ImportSIMActivity;->access$300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->setStop()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0
.end method
