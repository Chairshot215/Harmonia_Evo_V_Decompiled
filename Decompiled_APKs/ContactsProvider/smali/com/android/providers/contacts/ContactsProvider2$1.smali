.class Lcom/android/providers/contacts/ContactsProvider2$1;
.super Landroid/os/Handler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsProvider2;->initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->performBackgroundTask(ILjava/lang/Object;)V

    .line 1785
    return-void
.end method
