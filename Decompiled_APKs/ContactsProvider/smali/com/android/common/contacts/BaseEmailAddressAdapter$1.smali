.class Lcom/android/common/contacts/BaseEmailAddressAdapter$1;
.super Landroid/os/Handler;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapter;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;


# direct methods
.method constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$1;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$1;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->showSearchPendingIfNotComplete(I)V

    .line 273
    return-void
.end method
