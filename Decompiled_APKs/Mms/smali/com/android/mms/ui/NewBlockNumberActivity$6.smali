.class Lcom/android/mms/ui/NewBlockNumberActivity$6;
.super Ljava/lang/Object;
.source "NewBlockNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;->initWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewBlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$6;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity$6;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #calls: Lcom/android/mms/ui/NewBlockNumberActivity;->goToSelectContacts()V
    invoke-static {v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$100(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    .line 201
    return-void
.end method
