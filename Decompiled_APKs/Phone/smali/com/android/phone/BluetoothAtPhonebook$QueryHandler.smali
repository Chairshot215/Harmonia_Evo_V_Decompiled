.class Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtPhonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    .line 203
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 204
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 211
    if-nez p3, :cond_0

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    iput-object p3, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 218
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    const-string v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 219
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 220
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    goto :goto_0
.end method
