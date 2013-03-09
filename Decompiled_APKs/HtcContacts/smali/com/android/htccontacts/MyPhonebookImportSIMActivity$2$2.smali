.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$2;
.super Ljava/lang/Thread;
.source "MyPhonebookImportSIMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$2;->this$1:Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$2;->this$1:Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;

    iget-object v0, v0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkSIMContacts()V
    invoke-static {v0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$600(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    .line 101
    return-void
.end method
