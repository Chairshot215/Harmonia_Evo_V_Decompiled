.class Lcom/android/htccontacts/CommonContactAttributePicker$6;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;->onCreate(Landroid/os/Bundle;)V
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
    .line 1732
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$6;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1734
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$6;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1735
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$6;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->setResult(ILandroid/content/Intent;)V

    .line 1736
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$6;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->nameList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2700(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1737
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$6;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mailaddressList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1738
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$6;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->finish()V

    .line 1739
    return-void
.end method
