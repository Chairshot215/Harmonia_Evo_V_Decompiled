.class Lcom/android/mms/ui/ManageSimMessages$1;
.super Landroid/database/ContentObserver;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfUpdate"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$1;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 121
    return-void
.end method
