.class Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->doInBackground([Lcom/android/mms/ui/ManageSimMessages$SimSms;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->initialize()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 797
    return-void
.end method
