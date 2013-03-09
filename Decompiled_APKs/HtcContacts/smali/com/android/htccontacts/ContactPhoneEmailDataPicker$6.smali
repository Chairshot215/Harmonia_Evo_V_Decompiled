.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2239
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2240
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setResult(ILandroid/content/Intent;)V

    .line 2241
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->nameList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2242
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mailaddressList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2243
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$6;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->finish()V

    .line 2244
    return-void
.end method
