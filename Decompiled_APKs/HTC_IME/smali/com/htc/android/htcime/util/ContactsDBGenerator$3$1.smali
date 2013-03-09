.class Lcom/htc/android/htcime/util/ContactsDBGenerator$3$1;
.super Ljava/lang/Object;
.source "ContactsDBGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/ContactsDBGenerator$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/util/ContactsDBGenerator$3;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/ContactsDBGenerator$3;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$3$1;->this$1:Lcom/htc/android/htcime/util/ContactsDBGenerator$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "ContactsDBGenerator"

    const-string v1, "MSG_UPDATE_DB - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/htc/android/htcime/util/ContactsDBGenerator$3$1;->this$1:Lcom/htc/android/htcime/util/ContactsDBGenerator$3;

    iget-object v0, v0, Lcom/htc/android/htcime/util/ContactsDBGenerator$3;->this$0:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    #calls: Lcom/htc/android/htcime/util/ContactsDBGenerator;->loadContactsDB()V
    invoke-static {v0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->access$200(Lcom/htc/android/htcime/util/ContactsDBGenerator;)V

    .line 424
    const-string v0, "ContactsDBGenerator"

    const-string v1, "MSG_UPDATE_DB - end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method
