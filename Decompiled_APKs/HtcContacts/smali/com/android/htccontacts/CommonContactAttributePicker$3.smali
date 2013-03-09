.class Lcom/android/htccontacts/CommonContactAttributePicker$3;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$3;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$3;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->enableOrNotSaveOKButton()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2400(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 1577
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$3;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$300(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 1578
    return-void
.end method
