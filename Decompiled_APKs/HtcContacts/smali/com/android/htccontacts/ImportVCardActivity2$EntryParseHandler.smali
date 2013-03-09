.class public Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;
.super Ljava/lang/Object;
.source "ImportVCardActivity2.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryParseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 1895
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 5
    .parameter "vcardEntry"

    .prologue
    const/4 v4, 0x0

    .line 1898
    const-string v2, "ImportVCardActivity2"

    const-string v3, "EntryParseHandler.onEntryCreated()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v2, p1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$302(Lcom/android/htccontacts/ImportVCardActivity2;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;

    .line 1902
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v2, v2, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v2, :cond_0

    .line 1903
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v2, v2, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 1904
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iput-object v4, v2, Lcom/android/htccontacts/ImportVCardActivity2;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 1906
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    const-string v2, "CONTACT_INFO_COMPLETED"

    invoke-direct {v0, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1907
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$EntryParseHandler;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$2400(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1908
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1909
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1892
    return-void
.end method
